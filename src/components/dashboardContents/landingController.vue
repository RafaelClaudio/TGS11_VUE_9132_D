<template>
  <section
    id="welcome"
    class="hide-overflow"
  >
    <v-layout>
      <v-flex
        hidden-sm-and-down
        md6
      >
        <v-img
          src="https://cdn2.tstatic.net/jateng/foto/bank/images/akatsuki-lumajang_20170617_105833.jpg"
          height="100vh"
        />
      </v-flex>

      <v-flex
        xs12
        md6
        align-content-space-between
        layout
        :pa-5="$vuetify.breakpoint.smAndDown"
        wrap
      >
        <base-bubble-1
          style="transform: rotate(180deg) translateY(25%)"
        />

        <v-layout
          align-center
          justify-center
        >
          <v-flex
            xs10
            md6
          >
            <base-heading><h1>Welcome!</h1></base-heading>
            <br>
            <base-text>
            <p style="text-align:justify">
              “Atau tidak tahukah kamu, bahwa tubuhmu adalah bait Roh Kudus yang diam di dalam kamu, 
              Roh Kudus yang kamu peroleh dari Allah, –dan bahwa kamu bukan milik kamu sendiri? 
              Sebab kamu telah dibeli dan harganya telah lunas dibayar: 
              Karena itu muliakanlah Allah dengan tubuhmu!”
              1 Korintus 6:19-20
            </p>
            </base-text>
            <base-btn class="mt-4">
                <v-btn rounded color="primary" dark router to="/user">Masuk Aja Bos</v-btn>
            </base-btn>
          </v-flex>
        </v-layout>

        <base-bubble-2
          style="transform: rotate(180deg) translate(-200px, -15%)"
        />
      </v-flex>
    </v-layout>
  </section>
</template>