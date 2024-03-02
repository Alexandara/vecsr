import translator

if __name__ == '__main__':
    program = translator.Translator()
    program.get_metadata()
    program.print_rules_to_file(included=["type", "broken", "madeof"], rules_file="../scasp_knowledge_base/rules.pl")