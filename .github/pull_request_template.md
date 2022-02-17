** Important **
Freshworks Boot release process relies on the PR description to follow this template. Please fill-in the details following this template.

Description of the change
Context for the reviewer required for reviewing. This includes but not limited to:

Freshrelease ticket link
Small description explaining the change
Checklist
Please ensure the following are taken care of before adding reviewers to the PR.

 All PR mergeability checks have passed
 A sample added in freshworks-boot-samples to explain usages, if applicable
 Documentation updated
Merge commit message
BOOT-TicketID: Commit message to be used while merging.

Release notes
# Features
* <Module>: <Description>
* General: Some enhancement applicable for all modules.
  
# Improvements
* Doc: Some miscellaneous change in documentation
  
# Fixes
* KafkaConsumer: A bugfix in Kafka-consumer module

# Migration guide
* KafkaConsumer: Some breaking change is introduced in Kafka consumer. While upgrading do this.

# Contributor(s)
* @<githubID>
