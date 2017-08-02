
command: "/usr/local/bin/node stockx.widget/src/scrape.js"

refreshFrequency: "12h"

render: (output) ->
  if output == 'Unable to access network'
    """
      <h1>Unable to access network</h1>
    """
  else
    output.match(/~(.+)~/)[0].slice(1,-1);

style: """
  left: 0px
  top: 0px
  width: 100%

  @keyframes example {
  from {
    right: 0%
  }
  to {
    right: 17.5%
  }
}

  .ticker
    height: 50px
    line-height: 50px
    width: 120%
    margin-left: -10%
    padding-left: 10%
    padding-right: 25px
    overflow: hidden
    background: #252525
    color: #ffffff
    border-top: 1px solid #C5C5C5
    white-space: nowrap

    .symbol
      display: inline
      margin-right: 50px
      font-size: 18px
      font-family: sans-serif
      font-weight: 600
      animation: example 240s infinite
      animation-play-state: running
      animation-timing-function: linear
      position: relative

      .clickZone
        cursor: pointer
        line-height: 100%

      div
        display: inline-block

      .market-dir
        margin-left: 6px

      .arrow
        margin-left: 3px
        margin-right: 0

        .up
          color: #41ad33
          vertical-align: -4%

        .down
          font-size: 16px
          color: #FF5A5F
"""
