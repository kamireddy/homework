$(function() {
  var subscribe = {
    $form: $('#stay_informed form'),
    init: function() {
      if (this.$form.length) {
        this.bindEvents();
      }
    },
    submit: function(e) {
      var email = $(":text", this.$form).val();

      this.hideFailureMessage();
      this.hideSuccessMessage();
      this.hideInvalidMessage();

      if (this.isValidEmail(email)) {
        this.disableForm();

        $.post('/subscribe_to_newsletter', { email: email })
        .done(this.subscriptionSuccessful.bind(this))
        .fail(this.subscriptionFailed.bind(this))
        .always(this.enableForm.bind(this));
      } else {
        this.showInvalidMessage();
      }

      e.preventDefault();
    },
    subscriptionSuccessful: function() {
      this.showSuccessMessage();
      this.$form.get(0).reset();
    },
    subscriptionFailed: function() {
      this.showFailureMessage();
    },
    isValidEmail: function(email) {
      return /[^@]+@[^@]{2,}\.[A-Za-z]{2,}/.test(email);
    },
    disableForm: function() {
      var form = this.$form;

      $(':submit', form).val('Please wait');
      $(':input', form).attr('disabled', true);
    },
    enableForm: function() {
      var form = this.$form;

      $(':submit', form).val('Subscribe');
      $(':input', form).attr('disabled', false);
    },
    hideFailureMessage: function() {
      this.$form.siblings('.subscription-failed').css({ display: 'none' });
    },
    showFailureMessage: function() {
      this.$form.siblings('.subscription-failed').css({ display: 'block' });
    },
    hideSuccessMessage: function() {
      this.$form.siblings('.subscribed-successfully').css({ display: 'none' });
    },
    showSuccessMessage: function() {
      this.$form.siblings('.subscribed-successfully').css({ display: 'block' });
    },
    hideInvalidMessage: function() {
      this.$form.siblings('.invalid-email').css({ display: 'none' });
    },
    showInvalidMessage: function() {
      this.$form.siblings('.invalid-email').css({ display: 'block' });
    },
    bindEvents: function() {
      this.$form.on('submit', this.submit.bind(this));
    }
  };

  subscribe.init();
});
