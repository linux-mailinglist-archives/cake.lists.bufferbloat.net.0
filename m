Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B727D40E9
	for <lists+cake@lfdr.de>; Mon, 23 Oct 2023 22:31:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CBE863CB42;
	Mon, 23 Oct 2023 16:31:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1698093109;
	bh=uu2Nk0luPaK3w0JEbquk4cmeTSfnP2TG8XOsXfMdpvs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=blKwLtQ67hrWSrs40xn4GK80DvpL165IrQkotoyY396GaZKjkPFjB43LKHa9y3QEZ
	 sbff9C+zQfZajhLmO/1q8M9V6QKdwyah3wgbH986iS2X3YZHGAc8/J/QfGUfPf1gvy
	 em+b3RBSJqGRz5hjNt+PQQjQBsMvxf2trQLaIjf9G3pZCpeuAJBv29DZ+PY4XNcwgj
	 0npkvw3Y3Tf6h9CtLsWnpJXlEiWYum13Vnfp3C15seQjm19eruhpoBoI9QrND3+boi
	 Ful9ujdTIpS3OeruD3CrRVrW49B38gp3f9zVLgaARCAJM9hKh45yrKwFRLXdQG6Bu3
	 ZbKkSWwbTq3MA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E781A3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 23 Oct 2023 16:31:48 -0400 (EDT)
Received: by mail-qv1-xf30.google.com with SMTP id
 6a1803df08f44-66d122e0c85so23718316d6.3
 for <cake@lists.bufferbloat.net>; Mon, 23 Oct 2023 13:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698093108; x=1698697908; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EYCif4URPQxttF5XdSPAX2gZuxSjQj+QRNEJgOA9m4Q=;
 b=NMij+gEzRrc1JvY5kAgRiDV7lkoBCywiKjLWiVes5wYwKbsX5zD7eSHlM+28DLmo62
 XnzPnfUtQTctvq4b4jMAU6X73LZMhZ6yeOi50DldnXMPXVJ4j+I4C/J0cFgTRp41cMr5
 7C/DLTrDtsXezKtuHmcA40kixkFCUj50k6XxwGMcmR0Fo4HI0ohtH8WlkqsL7UkjtZiN
 +gfA4nQvs5dAkwzXksh7TBsPPiIvMkZ4Lzic9L3UzxKAWC3Q2wsmKg7sirjx93YGcvjo
 jiSw19lmxq2Uszv9fi5QwcXHtpYLDBiXQKiPncmP5Jwj09PAWN/auR5bpFImL2zPg969
 6qww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698093108; x=1698697908;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EYCif4URPQxttF5XdSPAX2gZuxSjQj+QRNEJgOA9m4Q=;
 b=xNhuwJTM/C7J7noUndEMl/ZU01YRT72zPWSqbHSSZsvdgUktWNmhhD4AIuRZfPGJje
 j0fZNapAnKlZDMPHB4avMh8buUIejCWO9lJuIdKZ+XhAOQ8oLQ030ElnHK3TqIY0OBfV
 nGJj516Z1Dzo96SJPdO5a7JRqiSwamZ3MqKw4K4BGCBqlsOtMIgyNWRxGY8olJ2QpWLu
 iZUhVvJLCrNwnAa3PL61MZaTrTRMnGK3XGRoY9P3g5scufVlW8USzKDGFtnHO9gEetVf
 KB3hBBZOAohMC2gSizuc2OnjOoNb4Z8anAUXxrocpUh/tzGcZF0x+DvKnCCpnomJ130/
 3aHw==
X-Gm-Message-State: AOJu0YwJ8mPamcj1GrAZR2LD2HF9TgD9bF+QRLLLStiSbWpD2NSyn8/C
 51GKRgLplZ4gB/qwFK621inbbxGZjjGEF70qzcFE1GBeVc4=
X-Google-Smtp-Source: AGHT+IG8vKA41mno5CLFQqMcBijzZVma+Xvp9QYutPPgifqBZZItexHKBF/EUovDtfSo2EU8KXn/jvC8AYJbvo5VSYk=
X-Received: by 2002:a05:6214:c65:b0:65d:31e:b810 with SMTP id
 t5-20020a0562140c6500b0065d031eb810mr12324320qvj.34.1698093107378; Mon, 23
 Oct 2023 13:31:47 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com>
Date: Mon, 23 Oct 2023 13:31:34 -0700
Message-ID: <CANypexTURfbiNsCBXgCyYwiQcX+z8mAFDpyPXfLqKkJVsro5iQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, Dave Taht <dave.taht@gmail.com>
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Content-Type: multipart/mixed; boundary="===============7909558525890714707=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7909558525890714707==
Content-Type: multipart/related; boundary="000000000000762ae00608681c99"

--000000000000762ae00608681c99
Content-Type: multipart/alternative; boundary="000000000000762adf0608681c98"

--000000000000762adf0608681c98
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

G'day,

Dave Taht and I have had a couple of phone conversations now, and he's
convinced me that rather than inserting the netem delay on each laptop,
that latency should be added by a seperate device.  To this end, I've got
another little PC and a NIC coming, so that I can repeat all the tests with
seperate latency injection.

However, I've also completed the flent tests with the laptops adding
latency at each end.

Full test runs here:
https://github.com/randomizedcoder/qdisc_results/tree/main/qdisc/2023-10-23=
T16%3A49%3A10

You can find the actual rrul flent .tar.gz results for each test.

e.g
Pi4 fq is here:
https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-23=
T16%3A49%3A10/pi4/fq/flent/test/16_flent/rrul-2023-10-23T170016.068273.2023=
-10-23T16_49_10_pi4_fq.flent.gz

Lychee Pi Risv with cake qdisc:
https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-23=
T16%3A49%3A10/lpi4a/cake20/flent/test/16_flent/rrul-2023-10-23T201354.81831=
6.2023-10-23T16_49_10_lpi4a_cake20.flent.gz

Just take these with a grain of salt until the new latency injection is in
place.

... I'll see if I can script up the generation of all the pretty graphs soo=
n

Thanks,
Dave Seddon


On Sun, Oct 15, 2023 at 8:11=E2=80=AFAM dave seddon <dave.seddon.ca@gmail.c=
om>
wrote:

> G'day,
>
> I've put more work into a test framework around the qdisc tests, but
> unfortunately flent doesn't work easily with Ubuntu LTS (
> https://github.com/tohojo/flent/issues/232, which I think is an issue
> with flent parsing the fping output ).
>
> Results and graphs in this sheet:
>
> https://docs.google.com/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8ABXK=
vDsSIMz9ag/edit#gid=3D1203641125
>
> Raw results of x2 test runs are here:
> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/report.c=
sv
>
> Each run:
>
> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-=
13T18%3A45%3A45/report.csv
>
> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-=
14T14%3A22%3A53/report.csv
>
> Full iperf outputs are available too, for example: https://github.com/ran=
domizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-r=
2s/fq_codel/iperf/test/16_iperf/stdout
>
>
> Logs for each run are also available, for example:
> https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-=
13T18%3A45%3A45/log.json
>
> The code repo updated here: https://github.com/randomizedcoder/cake ,
> with thehttps://github.com/randomizedcoder/cake/blob/main/README.md which
> explains how the test work.
> Updated google doc is started here:
> https://docs.google.com/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJYCj=
0WuCs0/edit?usp=3Dsharing
>
> Based on the questions on this list earlier, there is a folder with devic=
e
> information for each of the devices
> https://github.com/randomizedcoder/cake/tree/main/device_info
>
> For example, the Pi4 and the Lichee Pi (risc-v) hardware layout is here:
> - https://github.com/randomizedcoder/cake/blob/main/device_info/pi4/hwloc=
-ls-pi4.png
>
> -
> https://github.com/randomizedcoder/cake/blob/main/device_info/lpi4a/hwloc=
-ls-lpi4a.png
>
> The switch has also been upgraded to a Cisco 3750x, which I think based o=
n
> the "show interface" output has a max queue size of 40 frames.  The test
> process clears the counters before each test and gathers the "show
> interface" output at the end.
>
> The Lichee Pi 4A doesn't look good (
> https://wiki.sipeed.com/hardware/en/lichee/th1520/lp4a.html )
>
> [image: image.png]
> I really wish the flent was working, so I'll probably see if I can work
> out the parsing.
>
> Thanks,
> Dave Seddon
>
> On Fri, Oct 13, 2023 at 10:25=E2=80=AFAM dave seddon <dave.seddon.ca@gmai=
l.com>
> wrote:
>
>> My bad.  There's a bug for this.... Looks like I have to downgrade fping
>>
>> https://github.com/tohojo/flent/issues/232
>> https://github.com/schweikert/fping/issues/203
>>
>> On Fri, Oct 13, 2023 at 8:59=E2=80=AFAM dave seddon <dave.seddon.ca@gmai=
l.com>
>> wrote:
>>
>>> G'day,
>>>
>>> I've been working away on automation of the tests.  Pretty close to
>>> having much nicer tests with a lot more details.  I've also got the ris=
c-v
>>> device working.
>>>
>>> However, I've run into something funny with flent.  Flent is not happy
>>> with fping or ping.
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo
>>> /usr/sbin/ip netns exec network101 /usr/bin/flent rrul --output
>>>  /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_p=
i4_noqueue.png
>>> --data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_fle=
nt/
>>> --format summary --plot all_scaled --title-extra
>>> 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue
>>> --extended-metadata --host 172.17.51.10 --length 60 --ipv4 --socket-sta=
ts
>>> Starting Flent 2.0.1 using Python 3.10.12.
>>> Starting rrul test. Expected run time: 70 seconds.
>>> WARNING: Found fping, but couldn't parse its output. Not
>>> using.              <---------------- ???
>>> ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output of the
>>> system ping binary (/usr/bin/ping). Please install fping v3.5+.    <---=
-- ??
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping
>>> ii  fping                                 5.1-1
>>>           amd64        sends ICMP ECHO_REQUEST packets to network hosts
>>> ii  iputils-ping                          3:20211215-1
>>>          amd64        Tools to test the reachability of network hosts
>>> ii  kpartx                                0.8.8-1ubuntu1.22.04.1
>>>          amd64        create device mappings for partitions
>>> ii  libharfbuzz0b:amd64                   2.7.4-1ubuntu3.1
>>>          amd64        OpenType text shaping engine (shared library)
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version
>>> fping: Version 5.1
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V
>>> ping from iputils 20211215
>>>
>>> das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release
>>> DISTRIB_ID=3DUbuntu
>>> DISTRIB_RELEASE=3D22.04
>>> DISTRIB_CODENAME=3Djammy
>>> DISTRIB_DESCRIPTION=3D"Ubuntu 22.04.3 LTS"
>>>
>>> I did install via "apt install fping"
>>>
>>> Any thoughts please?
>>>
>>> Kind regards,
>>> Dave
>>>
>>> On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake <
>>> cake@lists.bufferbloat.net> wrote:
>>>
>>>>
>>>>
>>>> > On Sep 28, 2023, at 15:19, David Lang <david@lang.hm> wrote:
>>>> >
>>>> > On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:
>>>> >
>>>> >> P.S.: I am tempted, but will likely wait until they are available i=
n
>>>> quantity and hope that the street price comes down a bit before gettin=
g one
>>>> ;)
>>>> >
>>>> > They aren't available at all yet, and it's not clear when they will
>>>> be available.
>>>>
>>>>         The announcement was end of October, but I think I could
>>>> pre-order right now if I was feeling an urge. You are right though,
>>>> announced !=3D available or delivered.
>>>>
>>>> Regards
>>>>         Sebastian
>>>>
>>>> P.S.: I have a pi400 in use as "desktop" for my oldest kid, this is
>>>> close to be actually generally usable, I would guess that changing a
>>>> potential p500 from the pi400's 4GB to 8 GB together with the other
>>>> imprivements the 5 brings might push it over the threshold into the tr=
uly
>>>> useful category. Which probably means that either a potential pi500 wi=
ll
>>>> come late and probably with only 4 GB, but let's see how this works ou=
t now
>>>> that the supply situation is less problematic.
>>>> And I understand that there are other capable ARM based SoCs for
>>>> homerouter/desktop duty, I just happen ot have a soft spot for the
>>>> raspberry project ;)
>>>>
>>>> >
>>>> > David Lang
>>>>
>>>> _______________________________________________
>>>> Cake mailing list
>>>> Cake@lists.bufferbloat.net
>>>> https://lists.bufferbloat.net/listinfo/cake
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
> --
> Regards,
> Dave Seddon
> +1 415 857 5102
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000762adf0608681c98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>G&#39;day,</div><div><br></div><div>Dave Taht and I h=
ave had a couple of phone conversations now, and he&#39;s convinced me that=
 rather than inserting the netem delay on each laptop, that latency should =
be added by a seperate device.=C2=A0 To this end, I&#39;ve got another litt=
le PC and a NIC coming, so that I can repeat all the tests with seperate la=
tency injection.</div><div><br></div><div>However, I&#39;ve also completed =
the flent tests with the laptops adding latency at each end.<br></div><div>=
<br></div><div>Full test runs here:<br></div><div><a href=3D"https://github=
.com/randomizedcoder/qdisc_results/tree/main/qdisc/2023-10-23T16%3A49%3A10"=
>https://github.com/randomizedcoder/qdisc_results/tree/main/qdisc/2023-10-2=
3T16%3A49%3A10</a></div><div><br></div><div>You can find the actual rrul fl=
ent .tar.gz results for each test.</div><div><br></div><div>e.g</div><div>P=
i4 fq is here:</div><div><a href=3D"https://github.com/randomizedcoder/qdis=
c_results/blob/main/qdisc/2023-10-23T16%3A49%3A10/pi4/fq/flent/test/16_flen=
t/rrul-2023-10-23T170016.068273.2023-10-23T16_49_10_pi4_fq.flent.gz">https:=
//github.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-23T16%3A=
49%3A10/pi4/fq/flent/test/16_flent/rrul-2023-10-23T170016.068273.2023-10-23=
T16_49_10_pi4_fq.flent.gz</a></div><div><br></div><div>Lychee Pi Risv with =
cake qdisc:<br></div><div><a href=3D"https://github.com/randomizedcoder/qdi=
sc_results/blob/main/qdisc/2023-10-23T16%3A49%3A10/lpi4a/cake20/flent/test/=
16_flent/rrul-2023-10-23T201354.818316.2023-10-23T16_49_10_lpi4a_cake20.fle=
nt.gz">https://github.com/randomizedcoder/qdisc_results/blob/main/qdisc/202=
3-10-23T16%3A49%3A10/lpi4a/cake20/flent/test/16_flent/rrul-2023-10-23T20135=
4.818316.2023-10-23T16_49_10_lpi4a_cake20.flent.gz</a></div><div><br></div>=
<div>Just take these with a grain of salt until the new latency injection i=
s in place.</div><div><br></div><div>... I&#39;ll see if I can script up th=
e generation of all the pretty graphs soon<br></div><div><br></div><div>Tha=
nks,</div><div>Dave Seddon<br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 15, 2023 at =
8:11=E2=80=AFAM dave seddon &lt;<a href=3D"mailto:dave.seddon.ca@gmail.com"=
>dave.seddon.ca@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>G&#39;day,</div><div><br></d=
iv><div>I&#39;ve put more work into a test framework around the qdisc tests=
, but unfortunately flent doesn&#39;t work easily with Ubuntu LTS ( <a href=
=3D"https://github.com/tohojo/flent/issues/232" target=3D"_blank">https://g=
ithub.com/tohojo/flent/issues/232</a>, which I think is an issue with flent=
 parsing the fping output ).<br></div><div><br></div><div><div><div>Results=
 and graphs in this sheet:<br></div><div><a href=3D"https://docs.google.com=
/spreadsheets/d/1T59QwEdNwJFm4TgDFA_NY98gicOm8ABXKvDsSIMz9ag/edit#gid=3D120=
3641125" target=3D"_blank">https://docs.google.com/spreadsheets/d/1T59QwEdN=
wJFm4TgDFA_NY98gicOm8ABXKvDsSIMz9ag/edit#gid=3D1203641125</a></div></div></=
div><div><br></div><div>Raw results of x2 test runs are here:<br></div><div=
><a href=3D"https://github.com/randomizedcoder/qdisc_results/blob/main/qdis=
c/report.csv" target=3D"_blank">https://github.com/randomizedcoder/qdisc_re=
sults/blob/main/qdisc/report.csv</a></div><div><br></div><div>Each run:<br>=
</div><div><a href=3D"https://github.com/randomizedcoder/qdisc_results/blob=
/main/qdisc/2023-10-13T18%3A45%3A45/report.csv" target=3D"_blank">https://g=
ithub.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%=
3A45/report.csv</a></div><div><a href=3D"https://github.com/randomizedcoder=
/qdisc_results/blob/main/qdisc/2023-10-14T14%3A22%3A53/report.csv" target=
=3D"_blank">https://github.com/randomizedcoder/qdisc_results/blob/main/qdis=
c/2023-10-14T14%3A22%3A53/report.csv</a></div><div><br></div><div>Full iper=
f outputs are available too, for example: <a href=3D"https://github.com/ran=
domizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nanopi-r=
2s/fq_codel/iperf/test/16_iperf/stdout" target=3D"_blank">https://github.co=
m/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3A45/nan=
opi-r2s/fq_codel/iperf/test/16_iperf/stdout </a><br></div><div><br></div><d=
iv>Logs for each run are also available, for example: <a href=3D"https://gi=
thub.com/randomizedcoder/qdisc_results/blob/main/qdisc/2023-10-13T18%3A45%3=
A45/log.json" target=3D"_blank">https://github.com/randomizedcoder/qdisc_re=
sults/blob/main/qdisc/2023-10-13T18%3A45%3A45/log.json</a></div><div><br></=
div><div>The code repo updated here: <a href=3D"https://github.com/randomiz=
edcoder/cake" target=3D"_blank">https://github.com/randomizedcoder/cake</a>=
 , with the<a href=3D"https://github.com/randomizedcoder/cake/blob/main/REA=
DME.md" target=3D"_blank">https://github.com/randomizedcoder/cake/blob/main=
/README.md</a> which explains how the test work.</div><div>Updated google d=
oc is started here: <a href=3D"https://docs.google.com/document/d/1fYKj3BS8=
9aB9drg_DsSq289xSdVQhn1zUJYCj0WuCs0/edit?usp=3Dsharing" target=3D"_blank">h=
ttps://docs.google.com/document/d/1fYKj3BS89aB9drg_DsSq289xSdVQhn1zUJYCj0Wu=
Cs0/edit?usp=3Dsharing</a></div><div><br></div><div>Based on the questions =
on this list earlier, there is a folder with device information for each of=
 the devices<br></div><div><a href=3D"https://github.com/randomizedcoder/ca=
ke/tree/main/device_info" target=3D"_blank">https://github.com/randomizedco=
der/cake/tree/main/device_info</a></div><div><br></div><div>For example, th=
e Pi4 and the Lichee Pi (risc-v) hardware layout is here:</div><div>- <a hr=
ef=3D"https://github.com/randomizedcoder/cake/blob/main/device_info/pi4/hwl=
oc-ls-pi4.png" target=3D"_blank">https://github.com/randomizedcoder/cake/bl=
ob/main/device_info/pi4/hwloc-ls-pi4.png <br></a></div><div>- <a href=3D"ht=
tps://github.com/randomizedcoder/cake/blob/main/device_info/lpi4a/hwloc-ls-=
lpi4a.png" target=3D"_blank">https://github.com/randomizedcoder/cake/blob/m=
ain/device_info/lpi4a/hwloc-ls-lpi4a.png</a><br></div><div><br></div><div>T=
he switch has also been upgraded to a Cisco 3750x, which I think based on t=
he &quot;show interface&quot; output has a max queue size of 40 frames.=C2=
=A0 The test process clears the counters before each test and gathers the &=
quot;show interface&quot; output at the end.<br></div><div><br></div><div>T=
he Lichee Pi 4A doesn&#39;t look good ( <a href=3D"https://wiki.sipeed.com/=
hardware/en/lichee/th1520/lp4a.html" target=3D"_blank">https://wiki.sipeed.=
com/hardware/en/lichee/th1520/lp4a.html</a> )<br></div><div><br></div><div>=
<img src=3D"cid:ii_lnrlip390" alt=3D"image.png" width=3D"578" height=3D"356=
"><br></div><div>I really wish the flent was working, so I&#39;ll probably =
see if I can work out the parsing.</div><div><br></div><div>Thanks,</div><d=
iv>Dave Seddon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Oct 13, 2023 at 10:25=E2=80=AFAM dave seddo=
n &lt;<a href=3D"mailto:dave.seddon.ca@gmail.com" target=3D"_blank">dave.se=
ddon.ca@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>My bad.=C2=A0 There&#39;s a bug for =
this.... Looks like I have to downgrade fping<br></div><div><br></div><div>=
<a href=3D"https://github.com/tohojo/flent/issues/232" target=3D"_blank">ht=
tps://github.com/tohojo/flent/issues/232</a></div><div><a href=3D"https://g=
ithub.com/schweikert/fping/issues/203" target=3D"_blank">https://github.com=
/schweikert/fping/issues/203</a></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 13, 2023 at 8:59=E2=80=AF=
AM dave seddon &lt;<a href=3D"mailto:dave.seddon.ca@gmail.com" target=3D"_b=
lank">dave.seddon.ca@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>G&#39;day,</div><div><b=
r></div><div>I&#39;ve been working away on automation of the tests.=C2=A0 P=
retty close to having much nicer tests with a lot more details.=C2=A0 I&#39=
;ve also got the risc-v device working.<br></div><div><br></div><div>Howeve=
r, I&#39;ve run into something funny with flent.=C2=A0 Flent is not happy w=
ith fping or ping.<br></div><div><br></div><div>das@3rd:~/Downloads/cake/cm=
d/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip netns exec network101 /usr/b=
in/flent rrul --output =C2=A0/tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/fle=
nt/test/15_flent/flent_pi4_noqueue.png --data-dir /tmp/qdisc/2023-10-13T15:=
53:21/pi4/noqueue/flent/test/15_flent/ --format summary --plot all_scaled -=
-title-extra 2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4=
_noqueue --extended-metadata --host 172.17.51.10 --length 60 --ipv4 --socke=
t-stats<br>Starting Flent 2.0.1 using Python 3.10.12.<br>Starting rrul test=
. Expected run time: 70 seconds.<br>WARNING: Found fping, but couldn&#39;t =
parse its output. Not using.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;---------------- ???<br>ERROR: Runner=
 Ping (ms) ICMP failed check: Cannot parse output of the system ping binary=
 (/usr/bin/ping). Please install fping v3.5+.=C2=A0=C2=A0=C2=A0 &lt;----- ?=
?</div><div><br></div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ d=
pkg --list | grep ping<br>ii =C2=A0fping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 5.1-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0sends ICMP ECHO_REQUEST packets to network hosts<br>ii =C2=A0=
iputils-ping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A03:20211215-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0Tools to test the reachability of network hosts<br>ii =
=C2=A0kpartx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.8.8-1ubuntu1.22.04.1 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0create device mappings for partitions<br>ii =C2=A0libharfb=
uzz0b:amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
2.7.4-1ubuntu3.1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenType text s=
haping engine (shared library)<br>das@3rd:~/Downloads/cake/cmd/run_qdiscs_t=
ests$ fping --version<br>fping: Version 5.1</div><div>das@3rd:~/Downloads/c=
ake/cmd/run_qdiscs_tests$ ping -V<br>ping from iputils 20211215</div><div><=
br></div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-r=
elease <br>DISTRIB_ID=3DUbuntu<br>DISTRIB_RELEASE=3D22.04<br>DISTRIB_CODENA=
ME=3Djammy<br>DISTRIB_DESCRIPTION=3D&quot;Ubuntu 22.04.3 LTS&quot;</div><di=
v><br></div><div>I did install via &quot;apt install fping&quot;<br></div><=
div><br></div><div>Any thoughts please?</div><div><br></div><div>Kind regar=
ds,</div><div>Dave<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebas=
tian Moeller via Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" tar=
get=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; On Sep 28, 2023, at 15:19, David Lang &lt;<a href=3D"mailto:david@lang=
.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:<br>
&gt; <br>
&gt;&gt; P.S.: I am tempted, but will likely wait until they are available =
in quantity and hope that the street price comes down a bit before getting =
one ;)<br>
&gt; <br>
&gt; They aren&#39;t available at all yet, and it&#39;s not clear when they=
 will be available.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The announcement was end of October, but I thin=
k I could pre-order right now if I was feeling an urge. You are right thoug=
h, announced !=3D available or delivered.<br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
P.S.: I have a pi400 in use as &quot;desktop&quot; for my oldest kid, this =
is close to be actually generally usable, I would guess that changing a pot=
ential p500 from the pi400&#39;s 4GB to 8 GB together with the other impriv=
ements the 5 brings might push it over the threshold into the truly useful =
category. Which probably means that either a potential pi500 will come late=
 and probably with only 4 GB, but let&#39;s see how this works out now that=
 the supply situation is less problematic.<br>
And I understand that there are other capable ARM based SoCs for homerouter=
/desktop duty, I just happen ot have a soft spot for the raspberry project =
;)<br>
<br>
&gt; <br>
&gt; David Lang<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--000000000000762adf0608681c98--

--000000000000762ae00608681c99
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lnrlip390>
X-Attachment-Id: ii_lnrlip390

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
zDw55zvzzHfm5Jnv4h8wadKkAQMGFBQU6B3SIKakpET/55///Oe2B/d4PBMmTLj00ksNAurr691u
t77MiYiMHhi4pao//dmwWCwGnYEcBcR0eo6MkSPfjeTIIIYcGSNHvhvJkUEMOTJGjnw3cl1nEEOO
jJEj340x2490xjnSmUym/v37+29KGLlo1wv27t376KOPlpWV/elPf9JvaWpq+s1vfiMi+jyFzMzM
m2666c0339y8ebP+bHq93ieffFJE7r777kgCOlejs3VRivnz52/YsKG5ufl73/ue/lzrizUeOXLE
V0bqSExOTo7eH9oG6AoKClJSUvTX+rZt2/Ly8touVRJJjM+xY8emTp2qv9BdHrGdfS3Y7fYJEya0
jfFfRNRutzc1Nek/19TUtD242Wz2zQ0JFZCZmTlq1Ki5c+f6bjxy5MihQ4eqq6tdLldSUlLfvn1H
jx6tn9337tA2Ztq0aXonSewc+QuVo4AYckSOyJHx80+OyJGQI3KUiDniui72c+SPfhSbOYr9fhR5
jM1mu+eee0I9amPRrhcsXbr09ddf//Of/7xz5865c+c2Nze///7733zzzZ133nn11VfrMb/73e8+
/vjjhQsXfv/73+/fv//69esLCgoeeuih6dOnRxjQidYVeW6aZrVnKrNnz+7du/e777776quv3n77
7SdOnHjvvfeam5unT59+8cUX68EdifENBwoIcDqd+pIY6enpW7ZsaWhosNlsIlJUVHT8+HH9V4YP
Hz58+HDjGB9fsMPh0MNEpL7F2zfj3Agf31Yf/jEOtzct6VyMb0TQo48+avwchg0QEVVV33777QMH
DvjfePDgwYKCgilTplxzzTUGMYWFhT/5yU9SUlISO0cBguYoADkiR0KOyBE58kOOhBz1jBxxXRf7
OQpAP4rBHMV1P9JjvvOd7xhP4oiE4tvUIWqampqeffbZ119/vayszGq1jhkz5v/8n/9z9913+z+Y
I0eO/PrXv/7oo4/q6+vz8/PvueeeBx98sF0BYe08qj6yPPj6Be89nKqvX1BSqTU5vPbepn6ZrUc+
duzYm2++6fV6W1pa5syZM2PGjLbbN7YrZsKECWPGjOnbt29AjC8gMzPz3nvvFZGioqLVq1d7PJ62
De7Xr1/YGJ+JEydef/31IvKXv/zFarXeeeedJtO3Bro4nc6CgoJ58+YZxxQWFs6cOdPgRO2yadOm
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
ukguukjGjJH+/Zu8XpfvjSio2tpam82WlhZyvIPL5WpqakpLS7PZQu5N0NTU5HK5srKyHA4pLJQv
vmj978SJDj2ijvCqUldmqiuzzfxIhgyRa66Ra6+VuXMlOTl6bfjmtLeyRhnQ1zuiX/ROCgAAgHaJ
dr1gxowZH330UcCNTqdTRAYOHKj/01cvaGlpqaqqysrKysjI8AUXFhZ6PJ45c+b4H2HEiBF2u/3L
L7/s2tYDaA+PRz76SF59Vd57T5xOifKCKZdfrl12mUmvDuTlifXbAxeamiTKa54kJ8usWTJrVus/
jx07VzvYu9fb0NA93/KXlcmyZbJsmaSlyVVXycKFprlzTaErJJ1g037PMx+4WlxeEauIJzNV/dW1
SdNGMEECAAAg5nT/WtJ1dXVvvPFGbm7u9OnTfbekpaXddtttK1eudLvdiqJccsklzz777NSpU0Xk
m2++EZEhQ4YEHGfYsGH+CyIC6Eb79smrr8p//7ecPBntU48ZI4895lmwoCEjw+hr/243eLAMHiy3
3CIiUlt7JuhAhupqWb9ePvxQ1q7t8s0gmprknXfknXcsIplBW3vJJXLFQq82yHP4lNLstObaXdNy
TbPz2/chsvuY+tS7TlU7d0tds/eJd5zLliYP6cN+PQAAALGlm+sFbrf7jjvuKC8v//DDD/Ure6/X
W19ff+bMmT59+jz//PPJycmbN29+7bXXLrvssq1bt44bN66hoUFE2l5Yp6enq6ra0tKSkpLSDY8E
6PEcDuWttyx/+5t0V+FuyhT5+c9l8WLxeLSmpu5pQ+fq00duvVVuvVUcDldBgfOzz1Kfe87c0NAN
LTl2TFaskBUrFBFr2zUmvCH3Nwy0tkj1LxboWlzeLw6p1AsAAABiTXfWC2pra2+88cbNmze/8sor
8+fP12/UNO2tt95KT09fuHChfstdd901Y8aM++677/HHH3/nnXdCHc3r9YqIYrhy18mTJ0+cnTR8
uCZVJHCQgm7nzp0pVk1EGhqGiKS2DTh16tSOHZVn/zUq6EEOHz6c3NDIiThRYp9Ip2nKffeNPHIk
88yZbhhUbzZ758+vXbLk1LhxTYoiX38taWlpdrv9yJEjTaHLBna7PS0tbceOHQZHzs3Nra2t3b9/
f6iAaJ5o0iT7gAGHrruuqbLS9vHHWR99lLV7d6xsJNH20YV6RCXHB4sEaXbhgao8q28sSqy8vKPc
j3Qx9aqLhRMdqErbcCS7sinZ4bblpNVemN109cgqi6m17BRJjkTkdLN19YF+x+pSGp22XsmOoZk1
140+lZnkbvtboR5R4r3qYupEPh151cXUI+JEQU/kL17egnraiRLvVZdgJ0pJSRkzZkzQgK7TbfWC
Q4cOXXPNNSdOnHj33XevueYa3+1ms3nx4sUBwffcc8/Pf/7zTz75RER69eolIg1tvmKrr6+3WCzJ
4Rbs8i1vluEOOVC5d+/eqTaviFgswZ+fpKQk42XSRCQ9PT0ry8qJOFFin6i52bR8ea9/+7cLjOO7
SJ8+6q231t92W73drorYRFoftdVqFRHjZQj1u8I+UpvNZhDTLSfKypJRo1w//nHlyZOWDz9MW7Mm
/euvk4wP3tWCtjzoIzKZg+9/0TvdGoMv76idKEAMvuq660SfHEpbUZju++epJtupJpuYk783ucFm
9kpkOdpzMmnF1+mnGlszVe8w73ZkOL1Jt05uGNTbE+EjSrxXXUydyKcjr7qYekScKOiJAsT+W1AP
PFHiveoS70TR1z31gt27d8+dOzc1NfXzzz8fP3582HhFUbKzs/WVC3Jzc0WktLQ0IObIkSMjR440
Pk7//v19P9ebVRFH0LBhw4alJysikvKFQ0RtG5CZmZmbm332X8FLd3a7PTfXwok4UaKeqL7e8pe/
yBtvSPSHx9vt2tSp3iVLzLfcYk5KyhIJfIfVty2w2+1hty3Q309Cqa2tTUtLy8nJCRXQvSfKzZXZ
s+Wpp+TYMVm5Uv7xD3XbNrMaJKVdru2jC/WI4uXlHeUT+YvxV12UT/T/PmsRCZzBsvlwyvcuvSB3
gEkiy9EHh1ynGgOHEhw8Zav1DpjT5vkP9YgS71UXUyfy6cirLqYeEScKeiJ/cfEW1ANPlHivusQ7
UfR1w1lLSkquvPLKvn37fvLJJ749EfzvXb169YwZM2bOnOm7samp6ejRo0OHDhWRKVOm2Gy2jRs3
Pv74476AnTt31tTU3HTTTdF5CEDP5ZXT+8333GzeW9Tlp5o1S376U1m8WEzfntheW1tnvM1hTzN4
sPzsZ3LPPY6mJtfx41lTpnR3gxDbdh9TNx9QD56wWC0yPMd11ThLnj1GF48oqw6+NsbR0+qoAZG2
ubI++EEOnFT9r4KqGrzv7fCUVJz/cp4AACSeaH8Wqqq6ZMkSp9O5YcOGtsUCPeDhhx+ePHnyli1b
9JULvV7vo48+6vF49HkKmZmZN91005tvvrl58+ZLL71UD3jyySdF5O67747uowF6FlejcuC9pKq9
Xbv13dSpnttusyxeLIMHd+l5EpDVKpMny5NPyj//c3c3BbFq037P2S0qTCJS+I17daH7qZuTpwyP
xS0tW1zB/9QP+FK64wcpr9Uees1R16xHKsXl7tWFsnSOdsclsbvHCgAAURDtesGKFSsKCwsnT578
xz/+MeCuGTNm3HDDDRdeeOEjjzzy7//+72PGjLn++utTUlI+/fTTL7/8cty4cb/+9a/1yN/97ncf
f/zxwoULv//97/fv33/9+vUFBQUPPfSQb0dGAJ2usshy8H2bu6VLVjTs00fGjpXrr5dFi5pzcpxh
J3HBwGOPyenT8sIL3d0OxKRnPnAFbFHh8siza5zLfxxkBaYOWlHg2rhPLa2ymU0ypE/LNZMs107u
nrmXYS3b4D5bLDjn9S3ueRdZBmbF6OALAACiINr1gpKSEhEpLCwsLCwMuOvee++94YYbROQPf/jD
pEmTnn/++b/+9a+qqg4bNuzRRx/95S9/mZGRoUcOHTr0iy+++PWvf71q1ar6+vr8/Pz/+I//ePDB
B6P8WICewiuln9hKP+nohX7//t4lS5x33WUeNy7koZqavC5XB8/T0ymKPPeciERaMhgyRMrKurRF
iBWlVVrQL9sr6rw1jd4L0juzGvjieuc721tXE1Q1KanUnl/ranbJkhmB3f+b097KGmVAX++Ifp14
/vbZVx5kQqmqycGTGvUCAEBPFu16wW9+85vf/OY3xjGKotx+++233367QUxubu7f//73zmwZgBDK
v7J2pFiQlCTf/a788IcyZ47b4Whh3YEo0EsG2dlydlSWkUWL5L775H//Vz78UIqLpba269uHbtL2
K3QfW6deDpSd1nzFAn9rizz+9YJN+z3PfOBqcXlFrCKezFT1V9cmTRvRDTMjQj0znfu0AAAQd6ia
AzBy5qj54AfnOYN3/nz585/l5ElZsUIWLBBzLM6PTliKIo89Ji++GD7yz3+WmTPlRz+SzZulosJV
U1PrdLq8XtH/U1X5xz/kttskOTPkn5pAgJbA7QhalZ3WKupap0PsPqY+9a7Tf7xDXbP3iXecZdWB
GyIAAIDuQuUcQEjOemXP35O87bx6HzNGnn1WFizomjahPZYulUcfk/q6MGEtLTJmjPzpT3LDDYF3
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
--000000000000762ae00608681c99--

--===============7909558525890714707==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7909558525890714707==--
