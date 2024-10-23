<template>
    <div class="page-content">
        <img class="pfp" :src="profilePicture" alt="Profile Picture" />
        <div class="title username">{{ username }}</div>
        <div class="links-div">
            <div class="link" v-for="(link, index) in links" :key="index" @click="link.onclick">
                <img class="icon" :src="link.image" alt="Icon" />
                <div class="link-details">
                    <div class="link-title">{{ link.title }}</div>
                    <div class="link-desc" v-if="link.desc">{{ link.desc }}</div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    data() {
        return {
            username: "Epicman212",
            profilePicture: require('@/assets/users/Epicman212/pfp2.png'),
            links: [
                {
                    image: require('@/assets/users/Epicman212/pfp.png'),
                    title: "My Youtube!",
                    desc: "Nothing there, yet. Might as well subscribe to stay updated 🤷‍♂️.",
                    onclick: () => this.openLink("https://www.youtube.com/channel/UCKxFry7mmwIBJl-Cwirw8pg")
                },
                {
                    image: require('@/assets/users/Epicman212/links/github.png'),
                    title: "My GitHub!",
                    desc: "See my latest coding projects!",
                    onclick: () => this.openLink("https://github.com/KACofficial")
                },
                {
                    image: require('@/assets/users/Epicman212/links/hn.png'),
                    title: "Join Hackers’ Nexus!",
                    desc: "Dive into the world of ethical hacking, capture the flags (CTFs), and programming challenges.",
                    onclick: () => this.openLink("https://discord.gg/u6E64zkeS6")
                },
            ]
        }
    },
    methods: {
        openLink(url) {
            window.open(url, '_blank');
        }
    }
}
</script>

<style scoped>
.page-content {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #1a1a1a;
    border-radius: 8px;
    box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.1);
}

.pfp {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 15px;
    border: 4px solid #cc0000;
}

.username {
    font-size: 1.8rem;
    font-weight: bold;
    margin-bottom: 20px;
}

.links-div {
  display: flex;
  flex-direction: column;
  gap: 20px; /* Increased gap between links */
}

.link {
  display: flex;
  align-items: center;
  background-color: #292929;
  padding: 20px; /* Increased padding for larger links */
  border-radius: 8px;
  transition: background-color 0.2s ease;
  cursor: pointer;
}

.link:hover {
  background-color: #373737;
}

.icon {
  width: 60px; /* Increased icon size */
  height: 60px;
  border-radius: 50%;
  object-fit: cover;
  margin-right: 20px; /* Increased margin for spacing */
}

.link-details {
  flex-grow: 1;
}

.link-title {
  font-size: 1.5rem; /* Increased font size for link titles */
  font-weight: 500;
}

.link-desc {
  font-size: 0.9rem; /* Increased font size for descriptions */
  color: #bbb;
  margin-top: 5px;
}

</style>