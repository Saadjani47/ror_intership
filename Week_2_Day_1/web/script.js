document.addEventListener('DOMContentLoaded', function() {
  
    document.querySelectorAll('nav a').forEach(link => {
      link.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) window.scrollTo({ top: target.offsetTop - 100, behavior: 'smooth' });
      });
    });
  
    document.querySelector('.img').id = 'home';
    document.querySelector('main').id = 'gallery';
    document.querySelector('.about-section').id = 'about';
    document.querySelector('.contact-section').id = 'contact';
  
    const form = document.querySelector('.contact-form form');
    if (form) {
      form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const message = document.getElementById('message').value.trim();

        const errormessage = document.getElementById('errormessage')

        if (!name || !email || !message) {
          errormessage.innerText = "Please Fill this field!";
          errormessage.style.color = 'red';
          return;
        }

        if (name.length < 3) {
          errormessage.innerText = "Name must be at least 3 characters long";
          return;
        }
        else if (name.length > 30) {
          errormessage.innerText = "Name must be less than 30 characters long";
          return;
        }

        if (message.length > 300) {
          errormessage.innerText = "Message must be less than 300 characters long";
          return;
        }

        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
          alert('Please enter a valid email');
          return;
        }
        let confirmUser = confirm("Are you sure you want to send this message?");
        if(confirmUser){
          setTimeout(() =>{
            alert(`Thank you ${name}, your message has been sent!`);
            form.reset();
          }, 3000)
        }
        else if(!confirmUser){
          alert("Message not sent");
          form.reset();
        }
      });
    }
  
    window.addEventListener('scroll', function() {
      const scrollPos = window.scrollY + 150;
      
      document.querySelectorAll('section, main, nav').forEach(section => {
        if (scrollPos >= section.offsetTop && scrollPos < section.offsetTop + section.offsetHeight) {
          const id = section.id;
          document.querySelectorAll('nav a').forEach(link => {
            link.classList.toggle('active', link.getAttribute('href') === `#${id}`);
          });
        }
      });
    });

        const toggleButton = document.getElementById('themeToggle');
        const body = document.body;
        
        body.classList.add('light-mode');
        
        toggleButton.addEventListener('click', () => {
            if (body.classList.contains('light-mode')) {
                body.classList.replace('light-mode', 'dark-mode');
                toggleButton.textContent = '☀️';
                
                document.querySelectorAll('h1, h2, p, li, a, label').forEach(element => {
                    element.style.color = 'white';
                });
                
                document.querySelectorAll('input, textarea').forEach(element => {
                    element.style.backgroundColor = 'transparent';
                    element.style.color = 'white';
                    element.style.borderColor = 'white';

                document.querySelector('.submit-btn').style.color = 'white';
                document.querySelector('.submit-btn').style.borderColor = 'white';
                });
                
                document.querySelector('nav').style.backgroundColor = 'white';
                document.querySelectorAll('nav a').forEach(link => {
                    link.style.color = 'black';

                document.querySelector('.theme-toggle').style.borderColor = 'black';
                document.querySelector('.theme-toggle').style.backgroundColor = 'transparent';
                });

                document.querySelector('main').style.background = 'linear-gradient(rgb(228, 248, 202), lightblue,rgb(228, 248, 202))';
                document.querySelector('.about-section').style.background = 'linear-gradient(rgb(228, 248, 202), lightblue,rgb(228, 248, 202))';
                document.querySelector('.contact-section').style.background = 'linear-gradient(rgb(228, 248, 202), lightblue,rgb(228, 248, 202))';
                document.querySelector('.read').style.color = 'white';
                document.querySelector('.read').style.borderColor = 'white';

                const submitBtn = document.querySelector('.submit-btn');

                submitBtn.addEventListener('mouseover', () => {
                  submitBtn.style.backgroundColor = 'white';
                  submitBtn.style.color = 'black';
                  

                });
                submitBtn.addEventListener('mouseout', () => {
                  submitBtn.style.backgroundColor = ''; 
                  submitBtn.style.color = 'white';

                });


                const readBtn = document.querySelector('.read');

                readBtn.addEventListener('mouseover', () => {
                  readBtn.style.backgroundColor = 'white';
                  readBtn.style.color = 'black';
                  

                });
                readBtn.addEventListener('mouseout', () => {
                  readBtn.style.backgroundColor = ''; 
                  readBtn.style.color = 'white';

                });



                
                
            } else {
                body.classList.replace('dark-mode', 'light-mode');
                toggleButton.textContent = '🌙';
                
                document.querySelectorAll('h1, h2, p, li, a, label').forEach(element => {
                    element.style.color = '';
                });
                
                document.querySelectorAll('input, textarea').forEach(element => {
                    element.style.backgroundColor = '';
                    element.style.color = '';
                    element.style.borderColor = '';

                    document.querySelector('.submit-btn').style.color = '';
                    document.querySelector('.submit-btn').style.borderColor = '';
                });
                
                document.querySelector('nav').style.backgroundColor = '';
                document.querySelectorAll('nav a').forEach(link => {
                    link.style.color = '';

                    document.querySelector('.theme-toggle').style.borderColor = '';
                    document.querySelector('.theme-toggle').style.backgroundColor = '';
                });

                document.querySelector('main').style.background = '';
                document.querySelector('.about-section').style.background = '';
                document.querySelector('.contact-section').style.background = '';
                document.querySelector('.read').style.color = '';
                document.querySelector('.read').style.borderColor = '';

                submitBtn.removeEventListener('mouseover', () => {
                  submitBtn.style.backgroundColor = '';
                  submitBtn.style.color = '';
                });
                submitBtn.removeEventListener('mouseout', () => {
                  submitBtn.style.backgroundColor = '';
                  submitBtn.style.color = '';
                });


                readBtn.removeEventListener('mouseover', () => {
                  readBtn.style.backgroundColor = '';
                  readBtn.style.color = '';
                });
                readBtn.removeEventListener('mouseout', () => {
                  readBtn.style.backgroundColor = '';
                  readBtn.style.color = '';
                });
            }
        });

  });