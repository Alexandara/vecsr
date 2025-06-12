import argparse
import cv2
import glob
import matplotlib
import numpy as np
import os
import torch
import json
import sys

sys.path.insert(0, './Depth-Anything-V2')
from depth_anything_v2.dpt import DepthAnythingV2


def detected_front_collision(image):   
    DEVICE = 'cuda' if torch.cuda.is_available() else 'mps' if torch.backends.mps.is_available() else 'cpu'
    
    model_configs = {
        'vits': {'encoder': 'vits', 'features': 64, 'out_channels': [48, 96, 192, 384]},
        'vitb': {'encoder': 'vitb', 'features': 128, 'out_channels': [96, 192, 384, 768]},
        'vitl': {'encoder': 'vitl', 'features': 256, 'out_channels': [256, 512, 1024, 1024]},
        'vitg': {'encoder': 'vitg', 'features': 384, 'out_channels': [1536, 1536, 1536, 1536]}
    }
    
    depth_anything = DepthAnythingV2(**model_configs['vitl'])
    depth_anything.load_state_dict(torch.load(f'Depth-Anything-V2/checkpoints/depth_anything_v2_vitl.pth', map_location='cpu'))
    depth_anything = depth_anything.to(DEVICE).eval()
        
    cmap = matplotlib.colormaps.get_cmap('Spectral_r')
    
    raw_image = image
    
    depth = depth_anything.infer_image(raw_image, 518)
    
    depth = (depth - depth.min()) / (depth.max() - depth.min()) * 255.0
    depth = depth.astype(np.uint8)

    tensor_depth = (cmap(depth)[:, :, :3] * 255)[:, :, ::-1].astype(np.uint8)

    collision = False
    for row in depth:
        for column in row:
            if (column > 200):
                collision = True
    return collision


