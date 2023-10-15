Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D53FA7C99D6
	for <lists+cake@lfdr.de>; Sun, 15 Oct 2023 17:53:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DDA373CB42;
	Sun, 15 Oct 2023 11:53:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697385184;
	bh=Mm33GMpnPzYOh5+2wgPB7nxh3rb/pRjvyAvHfkce4rE=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=XcXYSsutM3r5IDeGESmu8BZvFwBgdUxqkoOLXQImdk4ZI5HdCEchPIqmio3vIbbCH
	 Kos7S1+HC2cMHjlA7DLkKhMpa+uBH3X25X+VjKxuCp5TCM8wzoM8tUDOeeg1Nctt9B
	 5Z5tvMkr6ehjoo23EiEfOsn5L5h/H7Oi2z6sBJvvOmXbP5Lbh/VEp8rdKVetoZ5Z7Y
	 IrJ6+tRmmMUqygVr7C7f/STPZJyYIXvv8cJE/uW8zrIVvcpV0uHrcSsPBgnh4Dfrg4
	 QW4KEOl8BFAs61K8EsbD6h35ds+78QtgcPoZpZTHxsjhw0iYd5nO3aPHVTRqX09Not
	 5QJqhRU8/J5aA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D19013CB39
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 11:53:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1697385180; x=1697989980; i=moeller0@gmx.de;
 bh=V2WTvIO6ywN+elY6xvCJtGpON5W7FvRpzDnRb21YATQ=;
 h=X-UI-Sender-Class:Date:From:To:Subject:In-Reply-To:References;
 b=oi9t/KyUOuVJl8TdwW2Y/yewHpj3tsVCY/Ifjb3nyl+iSy14V2C/9QdjH2xb08Yln8Zqd7S6eEs
 uLVriY95KJ0zYgapam1ysR2BseDRx7Pnfz+0aMdT6j0ZM70vovjcEycyJ7epp0eeufraALiFCycDY
 RlWD7ZpsmZAH8KAxXrWgS/LRVlgZUd4QtyusCUYCABBVynyXyLl0mxEoAhcga8eggXIey3gC0DjHc
 HDHK7e9J97LzGhGQhGBld9pgL35qo40CyWNjqZqM5WF8VJT0piwKt21of2CLIZbrIwKKQgghZRc0O
 +0HhzwN9OBtIdMdicRXsBiHdPw0xeVYHzOSQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([77.10.49.66]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N4hzj-1ra1H92Z5r-011hKu; Sun, 15
 Oct 2023 17:53:00 +0200
Date: Sun, 15 Oct 2023 17:52:56 +0200
To: dave seddon <dave.seddon.ca@gmail.com>,
 dave seddon via Cake <cake@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, Dave Taht <dave.taht@gmail.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
 <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
 <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com>
 <CANypexS=7eP0eU4xTO62swRp2o+fM0rg4rG0OSMqq6ybKx2omA@mail.gmail.com>
 <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com>
Message-ID: <EADF76C6-5C1A-47DB-BDD1-10BC0D7C4522@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ifKIpmdRemWD/MCT79FpqiWG2YYDylHOHiNJDrHXjcqjPRtgOSj
 raP8zCECC1g0upP5LVfMSgeTA+rkoSRq7Laa9iQ1ke4H+3pzKKML3vhUUvU+mCmvNQuTDjz
 VotmzOZwaq3hr1FsHyAWgRar8KQI3DP8z963HfnHDVzj5lC+Hbvlu8743GrLQ3grRR/s/tk
 8wN4JXedgGpt+5NV/nDYQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ekOIoZ3AP8k=;DIW6l2u5HK3RgD+MYSrmiFL1lMD
 qX8s/IUvNeHFq7wu0NF1BxqWPEBlWXz4nc7KUkv6vvRwlEHJ6VfX5Np89Es11UzcQsGEJTQ61
 m1J2fw1uL+nQnbJbC+iAF2y4DS26i8SB8LAi9rGUhXWsRsGOLhF3N3vRWbdMwd9+14gw78HLI
 QpCDYe1vpsP5GJ52AUG+8M+j+NJcuAMQVQHY1glK1bmhMS8Dn8HzCG4ePUzJaxnNKk7TtxqrH
 1u4+z1PhoXnstTmD/GIXzlLhwopHW39Qsd9ekOV9PvEK+VJcBjOKc/1xC5M1D3pHNXMLCbLKy
 XMhhNs5ztIuY/9Q74AkB4X+IG/rbuZlaHSJX28FLfiJKynNhdhUjNZH01/cDJLuJGttIlqPyd
 0+OOAaQOaGa6ysk6UX2mEZspfiaa4cFhgH/KQzSZqXgQ6auO5IolL9FIxlGUp9Ri57Ss7G0Yb
 nx5x34YXFI/dj5giz+Ef8b+iUGhQfpHScvTwcYTojGm8XGHafL4mJJffFUGFUcZr8So/gNHg1
 X0gMehLWSt8uFObLdC/SHif/kGrR92zQJxGrNeUavCeIeWTqiKllgn15C6PcmIEIph+lqY5to
 EdUaYC8GTo9HWHTwRkoCIZW2HueG5UqBBQdGZwWExe8QS5w8gQyWmVUXvj37OStNMXNTqMxaB
 YEKMDP5Z5/hgyR9ZR3vwfjquxM4bzBUla7sC+CaMqWuhnh4SSO1SlyojjjtA+qbtv1tTtDsex
 E9xkywxUis4Su2YCUXY6QxosRmyUg4Yo4oDlg59pOi7/IHW/tvfC4EM84Y3G4lFAWXEtL6jwI
 GlbICk+sjmi9d1oXqWN1hkffcWVxSFvg7/fjzAAnXfAjXWvQbZ5k/23h4vFMc4/Ams2ITA6Rq
 r1yKHwQnCY6No6Khtdsii9iLlpjISN8WIycd/6d4lmPd6F/4vg/5T8MncKotulM4RXpfp+6cD
 /465Kqag4SQFvhNayNgr1DA72lM=
Subject: Re: [Cake] some comprehensive arm64 w/cake results
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: multipart/mixed; boundary="===============5026035625002155009=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5026035625002155009==
Content-Type: multipart/alternative;
 boundary=----8XUICOG9OAKHJLUSIMUVZ11YJAQ97Z
Content-Transfer-Encoding: 7bit

------8XUICOG9OAKHJLUSIMUVZ11YJAQ97Z
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

If I recall correctly, flent will use irtt for its delay probes if availabl=
e on both ends=2E Sure fixing fping seems like a good thing longer term, bu=
t to get data in quickly, maybe try irtt instead?

On 15 October 2023 17:11:23 CEST, dave seddon via Cake <cake@lists=2Ebuffe=
rbloat=2Enet> wrote:
>G'day,
>
>I've put more work into a test framework around the qdisc tests, but
>unfortunately flent doesn't work easily with Ubuntu LTS (
>https://github=2Ecom/tohojo/flent/issues/232, which I think is an issue w=
ith
>flent parsing the fping output )=2E
>
>Results and graphs in this sheet:
>https://docs=2Egoogle=2Ecom/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8=
ABXKvDsSIMz9ag/edit#gid=3D1203641125
>
>Raw results of x2 test runs are here:
>https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/report=
=2Ecsv
>
>Each run:
>https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/2023-1=
0-13T18%3A45%3A45/report=2Ecsv
>https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/2023-1=
0-14T14%3A22%3A53/report=2Ecsv
>
>Full iperf outputs are available too, for example:
>https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/2023-1=
0-13T18%3A45%3A45/nanopi-r2s/fq_codel/iperf/test/16_iperf/stdout
>
>
>Logs for each run are also available, for example:
>https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/2023-1=
0-13T18%3A45%3A45/log=2Ejson
>
>The code repo updated here: https://github=2Ecom/randomizedcoder/cake , w=
ith
>thehttps://github=2Ecom/randomizedcoder/cake/blob/main/README=2Emd which
>explains how the test work=2E
>Updated google doc is started here:
>https://docs=2Egoogle=2Ecom/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zU=
JYCj0WuCs0/edit?usp=3Dsharing
>
>Based on the questions on this list earlier, there is a folder with devic=
e
>information for each of the devices
>https://github=2Ecom/randomizedcoder/cake/tree/main/device_info
>
>For example, the Pi4 and the Lichee Pi (risc-v) hardware layout is here:
>- https://github=2Ecom/randomizedcoder/cake/blob/main/device_info/pi4/hwl=
oc-ls-pi4=2Epng
>
>-
>https://github=2Ecom/randomizedcoder/cake/blob/main/device_info/lpi4a/hwl=
oc-ls-lpi4a=2Epng
>
>The switch has also been upgraded to a Cisco 3750x, which I think based o=
n
>the "show interface" output has a max queue size of 40 frames=2E  The tes=
t
>process clears the counters before each test and gathers the "show
>interface" output at the end=2E
>
>The Lichee Pi 4A doesn't look good (
>https://wiki=2Esipeed=2Ecom/hardware/en/lichee/th1520/lp4a=2Ehtml )
>
>[image: image=2Epng]
>I really wish the flent was working, so I'll probably see if I can work o=
ut
>the parsing=2E
>
>Thanks,
>Dave Seddon
>
>On Fri, Oct 13, 2023 at 10:25=E2=80=AFAM dave seddon <dave=2Eseddon=2Eca@=
gmail=2Ecom>
>wrote:
>
>> My bad=2E  There's a bug for this=2E=2E=2E=2E Looks like I have to down=
grade fping
>>
>> https://github=2Ecom/tohojo/flent/issues/232
>> https://github=2Ecom/schweikert/fping/issues/203
>>
>> On Fri, Oct 13, 2023 at 8:59=E2=80=AFAM dave seddon <dave=2Eseddon=2Eca=
@gmail=2Ecom>
>> wrote:
>>
>>> G'day,
>>>
>>> I've been working away on automation of the tests=2E  Pretty close to
>>> having much nicer tests with a lot more details=2E  I've also got the =
risc-v
>>> device working=2E
>>>
>>> However, I've run into something funny with flent=2E  Flent is not hap=
py
>>> with fping or ping=2E
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo
>>> /usr/sbin/ip netns exec network101 /usr/bin/flent rrul --output
>>>  /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_=
pi4_noqueue=2Epng
>>> --data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_fl=
ent/
>>> --format summary --plot all_scaled --title-extra
>>> 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue
>>> --extended-metadata --host 172=2E17=2E51=2E10 --length 60 --ipv4 --soc=
ket-stats
>>> Starting Flent 2=2E0=2E1 using Python 3=2E10=2E12=2E
>>> Starting rrul test=2E Expected run time: 70 seconds=2E
>>> WARNING: Found fping, but couldn't parse its output=2E Not
>>> using=2E              <---------------- ???
>>> ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output of the
>>> system ping binary (/usr/bin/ping)=2E Please install fping v3=2E5+=2E =
   <----- ??
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping
>>> ii  fping                                 5=2E1-1
>>>         amd64        sends ICMP ECHO_REQUEST packets to network hosts
>>> ii  iputils-ping                          3:20211215-1
>>>          amd64        Tools to test the reachability of network hosts
>>> ii  kpartx                                0=2E8=2E8-1ubuntu1=2E22=2E04=
=2E1
>>>          amd64        create device mappings for partitions
>>> ii  libharfbuzz0b:amd64                   2=2E7=2E4-1ubuntu3=2E1
>>>          amd64        OpenType text shaping engine (shared library)
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version
>>> fping: Version 5=2E1
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V
>>> ping from iputils 20211215
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release
>>> DISTRIB_ID=3DUbuntu
>>> DISTRIB_RELEASE=3D22=2E04
>>> DISTRIB_CODENAME=3Djammy
>>> DISTRIB_DESCRIPTION=3D"Ubuntu 22=2E04=2E3 LTS"
>>>
>>> I did install via "apt install fping"
>>>
>>> Any thoughts please?
>>>
>>> Kind regards,
>>> Dave
>>>
>>> On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake <
>>> cake@lists=2Ebufferbloat=2Enet> wrote:
>>>
>>>>
>>>>
>>>> > On Sep 28, 2023, at 15:19, David Lang <david@lang=2Ehm> wrote:
>>>> >
>>>> > On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:
>>>> >
>>>> >> P=2ES=2E: I am tempted, but will likely wait until they are availa=
ble in
>>>> quantity and hope that the street price comes down a bit before getti=
ng one
>>>> ;)
>>>> >
>>>> > They aren't available at all yet, and it's not clear when they will=
 be
>>>> available=2E
>>>>
>>>>         The announcement was end of October, but I think I could
>>>> pre-order right now if I was feeling an urge=2E You are right though,
>>>> announced !=3D available or delivered=2E
>>>>
>>>> Regards
>>>>         Sebastian
>>>>
>>>> P=2ES=2E: I have a pi400 in use as "desktop" for my oldest kid, this =
is
>>>> close to be actually generally usable, I would guess that changing a
>>>> potential p500 from the pi400's 4GB to 8 GB together with the other
>>>> imprivements the 5 brings might push it over the threshold into the t=
ruly
>>>> useful category=2E Which probably means that either a potential pi500=
 will
>>>> come late and probably with only 4 GB, but let's see how this works o=
ut now
>>>> that the supply situation is less problematic=2E
>>>> And I understand that there are other capable ARM based SoCs for
>>>> homerouter/desktop duty, I just happen ot have a soft spot for the
>>>> raspberry project ;)
>>>>
>>>> >
>>>> > David Lang
>>>>
>>>> _______________________________________________
>>>> Cake mailing list
>>>> Cake@lists=2Ebufferbloat=2Enet
>>>> https://lists=2Ebufferbloat=2Enet/listinfo/cake
>>>>
>>>
>>>
>>> --
>>> Regards,
>>> Dave Seddon
>>> +1 415 857 5102
>>>
>>
>>
>> --
>> Regards,
>> Dave Seddon
>> +1 415 857 5102
>>
>
>
>--=20
>Regards,
>Dave Seddon
>+1 415 857 5102

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------8XUICOG9OAKHJLUSIMUVZ11YJAQ97Z
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">If I recall correctly, flent wil=
l use irtt for its delay probes if available on both ends=2E Sure fixing fp=
ing seems like a good thing longer term, but to get data in quickly, maybe =
try irtt instead?</div><br><br><div class=3D"gmail_quote"><div dir=3D"auto"=
>On 15 October 2023 17:11:23 CEST, dave seddon via Cake &lt;cake@lists=2Ebu=
fferbloat=2Enet&gt; wrote:</div><blockquote class=3D"gmail_quote" style=3D"=
margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); pad=
ding-left: 1ex;">
<div dir=3D"ltr"><div>G'day,</div><div><br></div><div>I've put more work i=
nto a test framework around the qdisc tests, but unfortunately flent doesn'=
t work easily with Ubuntu LTS ( <a href=3D"https://github=2Ecom/tohojo/flen=
t/issues/232">https://github=2Ecom/tohojo/flent/issues/232</a>, which I thi=
nk is an issue with flent parsing the fping output )=2E<br></div><div><br><=
/div><div><div><div>Results and graphs in this sheet:<br></div><div><a href=
=3D"https://docs=2Egoogle=2Ecom/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicO=
m8ABXKvDsSIMz9ag/edit#gid=3D1203641125" target=3D"_blank">https://docs=2Ego=
ogle=2Ecom/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8ABXKvDsSIMz9ag/edit=
#gid=3D1203641125</a></div></div></div><div><br></div><div>Raw results of x=
2 test runs are here:<br></div><div><a href=3D"https://github=2Ecom/randomi=
zedcoder/qdisc_results/blob/main/qdisc/report=2Ecsv">https://github=2Ecom/r=
andomizedcoder/qdisc_results/blob/main/qdisc/report=2Ecsv</a></div><div><br=
></div><div>Each run:<br></div><div><a href=3D"https://github=2Ecom/randomi=
zedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/report=2Ecsv=
">https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc/2023-1=
0-13T18%3A45%3A45/report=2Ecsv</a></div><div><a href=3D"https://github=2Eco=
m/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-14T14%3A22%3A53/rep=
ort=2Ecsv">https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdi=
sc/2023-10-14T14%3A22%3A53/report=2Ecsv</a></div><div><br></div><div>Full i=
perf outputs are available too, for example: <a href=3D"https://github=2Eco=
m/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nan=
opi-r2s/fq_codel/iperf/test/16_iperf/stdout">https://github=2Ecom/randomize=
dcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-r2s/fq_=
codel/iperf/test/16_iperf/stdout </a><br></div><div><br></div><div>Logs for=
 each run are also available, for example: <a href=3D"https://github=2Ecom/=
randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/log=
=2Ejson">https://github=2Ecom/randomizedcoder/qdisc_results/blob/main/qdisc=
/2023-10-13T18%3A45%3A45/log=2Ejson</a></div><div><br></div><div>The code r=
epo updated here: <a href=3D"https://github=2Ecom/randomizedcoder/cake" tar=
get=3D"_blank">https://github=2Ecom/randomizedcoder/cake</a> , with the<a h=
ref=3D"https://github=2Ecom/randomizedcoder/cake/blob/main/README=2Emd" tar=
get=3D"_blank">https://github=2Ecom/randomizedcoder/cake/blob/main/README=
=2Emd</a> which explains how the test work=2E</div><div>Updated google doc =
is started here: <a href=3D"https://docs=2Egoogle=2Ecom/document/d/1fYKj3BS=
89aB9drg_DsSq289xSdVQhn1zUJYCj0WuCs0/edit?usp=3Dsharing">https://docs=2Egoo=
gle=2Ecom/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJYCj0WuCs0/edit?usp=
=3Dsharing</a></div><div><br></div><div>Based on the questions on this list=
 earlier, there is a folder with device information for each of the devices=
<br></div><div><a href=3D"https://github=2Ecom/randomizedcoder/cake/tree/ma=
in/device_info" target=3D"_blank">https://github=2Ecom/randomizedcoder/cake=
/tree/main/device_info</a></div><div><br></div><div>For example, the Pi4 an=
d the Lichee Pi (risc-v) hardware layout is here:</div><div>- <a href=3D"ht=
tps://github=2Ecom/randomizedcoder/cake/blob/main/device_info/pi4/hwloc-ls-=
pi4=2Epng" target=3D"_blank">https://github=2Ecom/randomizedcoder/cake/blob=
/main/device_info/pi4/hwloc-ls-pi4=2Epng <br></a></div><div>- <a href=3D"ht=
tps://github=2Ecom/randomizedcoder/cake/blob/main/device_info/lpi4a/hwloc-l=
s-lpi4a=2Epng" target=3D"_blank">https://github=2Ecom/randomizedcoder/cake/=
blob/main/device_info/lpi4a/hwloc-ls-lpi4a=2Epng</a><br></div><div><br></di=
v><div>The switch has also been upgraded to a Cisco 3750x, which I think ba=
sed on the "show interface" output has a max queue size of 40 frames=2E&nbs=
p; The test process clears the counters before each test and gathers the "s=
how interface" output at the end=2E<br></div><div><br></div><div>The Lichee=
 Pi 4A doesn't look good ( <a href=3D"https://wiki=2Esipeed=2Ecom/hardware/=
en/lichee/th1520/lp4a=2Ehtml">https://wiki=2Esipeed=2Ecom/hardware/en/liche=
e/th1520/lp4a=2Ehtml</a> )<br></div><div><br></div><div><img src=3D"cid:ii_=
lnrlip390" alt=3D"image=2Epng" width=3D"578" height=3D"356"><br></div><div>=
I really wish the flent was working, so I'll probably see if I can work out=
 the parsing=2E</div><div><br></div><div>Thanks,</div><div>Dave Seddon<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Oct 13, 2023 at 10:25=E2=80=AFAM dave seddon &lt;<a href=3D"ma=
ilto:dave=2Eseddon=2Eca@gmail=2Ecom" target=3D"_blank">dave=2Eseddon=2Eca@g=
mail=2Ecom</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>My bad=2E&nbsp; There's a bug for this=
=2E=2E=2E=2E Looks like I have to downgrade fping<br></div><div><br></div><=
div><a href=3D"https://github=2Ecom/tohojo/flent/issues/232" target=3D"_bla=
nk">https://github=2Ecom/tohojo/flent/issues/232</a></div><div><a href=3D"h=
ttps://github=2Ecom/schweikert/fping/issues/203" target=3D"_blank">https://=
github=2Ecom/schweikert/fping/issues/203</a></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 13, 2023 at 8=
:59=E2=80=AFAM dave seddon &lt;<a href=3D"mailto:dave=2Eseddon=2Eca@gmail=
=2Ecom" target=3D"_blank">dave=2Eseddon=2Eca@gmail=2Ecom</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>G'day,</div><div><br></div><div>I've been working away on automation o=
f the tests=2E&nbsp; Pretty close to having much nicer tests with a lot mor=
e details=2E&nbsp; I've also got the risc-v device working=2E<br></div><div=
><br></div><div>However, I've run into something funny with flent=2E&nbsp; =
Flent is not happy with fping or ping=2E<br></div><div><br></div><div>das@3=
rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip netns =
exec network101 /usr/bin/flent rrul --output &nbsp;/tmp/qdisc/2023-10-13T15=
:53:21/pi4/noqueue/flent/test/15_flent/flent_pi4_noqueue=2Epng --data-dir /=
tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/ --format sum=
mary --plot all_scaled --title-extra 2023-10-13T15:53:21_pi4_noqueue --note=
 2023-10-13T15:53:21_pi4_noqueue --extended-metadata --host 172=2E17=2E51=
=2E10 --length 60 --ipv4 --socket-stats<br>Starting Flent 2=2E0=2E1 using P=
ython 3=2E10=2E12=2E<br>Starting rrul test=2E Expected run time: 70 seconds=
=2E<br>WARNING: Found fping, but couldn't parse its output=2E Not using=2E&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; &lt;---------------- ???<br>ERROR: Runner Ping (ms) ICMP failed check: C=
annot parse output of the system ping binary (/usr/bin/ping)=2E Please inst=
all fping v3=2E5+=2E&nbsp;&nbsp;&nbsp; &lt;----- ??</div><div><br></div><di=
v>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping<br=
>ii &nbsp;fping &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5=2E1-1 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; amd64 &nbsp; &nbsp; &nbsp; &nbsp;sends ICMP E=
CHO_REQUEST packets to network hosts<br>ii &nbsp;iputils-ping &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;3:20211215-1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;amd64 &nbsp; &nbsp; &nbsp; &nbsp;Tools=
 to test the reachability of network hosts<br>ii &nbsp;kpartx &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;0=2E8=2E8-1ubuntu1=2E22=2E04=2E1 &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;amd64 &nbsp; &nbsp; &nbsp; &nbsp=
;create device mappings for partitions<br>ii &nbsp;libharfbuzz0b:amd64 &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2=2E7=2E4-1ubunt=
u3=2E1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;amd64 &nbsp; &nbsp; &nbsp; &nbsp;OpenType text shaping engin=
e (shared library)<br>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping =
--version<br>fping: Version 5=2E1</div><div>das@3rd:~/Downloads/cake/cmd/ru=
n_qdiscs_tests$ ping -V<br>ping from iputils 20211215</div><div><br></div><=
div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release <br=
>DISTRIB_ID=3DUbuntu<br>DISTRIB_RELEASE=3D22=2E04<br>DISTRIB_CODENAME=3Djam=
my<br>DISTRIB_DESCRIPTION=3D"Ubuntu 22=2E04=2E3 LTS"</div><div><br></div><d=
iv>I did install via "apt install fping"<br></div><div><br></div><div>Any t=
houghts please?</div><div><br></div><div>Kind regards,</div><div>Dave<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake &lt;=
<a href=3D"mailto:cake@lists=2Ebufferbloat=2Enet" target=3D"_blank">cake@li=
sts=2Ebufferbloat=2Enet</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>
<br>
&gt; On Sep 28, 2023, at 15:19, David Lang &lt;<a href=3D"mailto:david@lan=
g=2Ehm" target=3D"_blank">david@lang=2Ehm</a>&gt; wrote:<br>
&gt; <br>
&gt; On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:<br>
&gt; <br>
&gt;&gt; P=2ES=2E: I am tempted, but will likely wait until they are avail=
able in quantity and hope that the street price comes down a bit before get=
ting one ;)<br>
&gt; <br>
&gt; They aren't available at all yet, and it's not clear when they will b=
e available=2E<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; The announcement was end of October, but I thi=
nk I could pre-order right now if I was feeling an urge=2E You are right th=
ough, announced !=3D available or delivered=2E<br>
<br>
Regards<br>
&nbsp; &nbsp; &nbsp; &nbsp; Sebastian<br>
<br>
P=2ES=2E: I have a pi400 in use as "desktop" for my oldest kid, this is cl=
ose to be actually generally usable, I would guess that changing a potentia=
l p500 from the pi400's 4GB to 8 GB together with the other imprivements th=
e 5 brings might push it over the threshold into the truly useful category=
=2E Which probably means that either a potential pi500 will come late and p=
robably with only 4 GB, but let's see how this works out now that the suppl=
y situation is less problematic=2E<br>
And I understand that there are other capable ARM based SoCs for homeroute=
r/desktop duty, I just happen ot have a soft spot for the raspberry project=
 ;)<br>
<br>
&gt; <br>
&gt; David Lang<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists=2Ebufferbloat=2Enet" target=3D"_blank">Cake@l=
ists=2Ebufferbloat=2Enet</a><br>
<a href=3D"https://lists=2Ebufferbloat=2Enet/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists=2Ebufferbloat=2Enet/listinfo/cake</a><=
br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pr=
efix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dav=
e Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pr=
efix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dav=
e Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"></blockquote></div><div dir=3D"auto">=
<div class=3D'k9mail-signature'>-- <br>Sent from my Android device with K-9=
 Mail=2E Please excuse my brevity=2E</div></div></body></html>
------8XUICOG9OAKHJLUSIMUVZ11YJAQ97Z--

--===============5026035625002155009==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5026035625002155009==--
