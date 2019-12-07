console.log """
Hey, you!
Yeah, you, right there!
There should've been a carousel here,
    a really nice carousel, each containing
    a paragraph of the "About me" section.
"""
console.log """
But the DOM is kind of a bitch, isn't it?
It doesn't find the element you've
    *verified* that it loads, and
    you spend hours trying to debug
    something that apparently can't be
    debugged.
"""

Vue.component 'about',
	props: [ 'paragraph' ]
	template: "<p v-html=\"paragraph\"></p>"

app = new Vue({
    el: "#app"
    data: {
        about: [
            "I have started learning JavaScript in 2016, and since then I've started
                developing solutions for every kind of problem. My
                <a href=\"https://github.com/samplasion\">GitHub page</a> counts over 70
                repositories."
            "As you can see, I've aways developed lots of Discord.js bots. I believe that
                developing bots can not only help in learning a new programming
                language, but it can also create fun experiences for you and your friends
                to enjoy."
            "My biggest project is Yamamura. It has over 100 commands,
                divided into categories. It has support for different languages, and
                it can be customized to fit your server's needs."
        ]
        currentYear: if (new Date).getFullYear() == 2019 then '2019' else '2019-' + (new Date).getFullYear()
    }
})

n = Math.random();

if n < 1 / 3
    document.querySelector('#avatar-icon').classList.add 'bump';
else if n < 2 / 3
    document.querySelector('#avatar-icon').classList.add 'ondulate';
else
    document.querySelector('#avatar-icon').classList.add 'both';