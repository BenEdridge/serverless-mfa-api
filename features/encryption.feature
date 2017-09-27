Feature: Encryption
  As a developer of totp-api
  I want to be able to encrypt and decrypt text
  So that I can store and retrieve sensitive information

  Scenario: Encrypting text
    Given I have a base64-encoded AES key
    When I encrypt a plain text message
    Then the result should NOT be empty
     And the result should NOT match the plain text message
  
  Scenario: Decrypting text
    Given I have a base64-encoded AES key
      And I have encrypted a plain text message
    When I decrypt the encrypted message
    Then the result should match the plain text message
  
  Scenario: Trying to decrypt with the wrong AES key
    Given I have a base64-encoded AES key
      And I have encrypted a plain text message
    When I decrypt the encrypted message using a wrong AES key
    Then the result should NOT match the plain text message
