Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C2A34F677
	for <lists+cake@lfdr.de>; Wed, 31 Mar 2021 04:04:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7DFE63CB5D;
	Tue, 30 Mar 2021 22:04:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617156295;
	bh=/o8vKoPGE0CZ89TqKjcQsTaNMgIvJxcsd4tulo9+tgE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nl7jD08ipDUr8y5pA07tHl4f/JYTkuE+no6GVhyCQ9i9vydhwME1o3JAtlGxF4NSc
	 rVMLnf9w7dvrJkuXqODo8564jKJwEsmegMWN0qIE47t7qqExi4RznvPb71CJeNBtbu
	 kxvPOKwlbCWj8XtpNFynGufC54ymAHw83EnDPzuRRv6xTmO8V7mr2qO+1bZ+q9IFTc
	 2sGOOY82E/GNoSvqE0ssPAWnY2Wf9pnSuIexuhV6ORdsGCZQhhyX5Va1ckDPzP74Im
	 qoBK9pl4w+LuVrqSWZ42G2qf0tOYHgscat4Q7FvLaLEzowLUL9vbb/dT1Wps6kGCOe
	 nozOHnE1bqPcA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 806063B29D;
 Tue, 30 Mar 2021 22:04:53 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 255EFF1A2E;
 Tue, 30 Mar 2021 19:04:52 -0700 (PDT)
Date: Tue, 30 Mar 2021 19:04:52 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: "David P. Reed" <dpreed@deepplum.com>
In-Reply-To: <1617153830.6256867@apps.rackspace.com>
Message-ID: <nycvar.QRO.7.76.6.2103301859470.13312@qynat-yncgbc>
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
 <1617049691.187521510@apps.rackspace.com> <YGKEbCGX57z9+PdA@mit.edu>
 <1617153830.6256867@apps.rackspace.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="===============8020392847907646789=="
Subject: Re: [Cake] [Make-wifi-fast] [Cerowrt-devel] wireguard almost takes
 a bullet
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Theodore Ts'o <tytso@mit.edu>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--===============8020392847907646789==
Content-Type: text/plain; format=flowed; charset=US-ASCII

the 'control' that the various companies gain over parts of the kernel is less a 
matter of the company having control and more a matter of them hiring/sponsoring 
a developer who has the control. If the person leaves that company for another 
one, any control moves with that developer.

and while most of the developers do work for a reltively small group of 
companies, the list of developers does shift over time nd people can 'break in' 
by submitting patches.

I'm not thrilled by the Linux Foundation, it was created to be a way to pay 
Linus without him working for a specific company (avoiding even the appearance 
of bias) but it's morphed to present at least the appearance of special access.

David Lang

On Tue, 30 Mar 2021, David P. Reed wrote:

> Date: Tue, 30 Mar 2021 21:23:50 -0400 (EDT)
> From: David P. Reed <dpreed@deepplum.com>
> To: Theodore Ts'o <tytso@mit.edu>
> Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
>     Cake List <cake@lists.bufferbloat.net>,
>     cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
>     bloat <bloat@lists.bufferbloat.net>
> Subject: Re: [Make-wifi-fast] [Cerowrt-devel] wireguard almost takes a bullet
> 
>
> Theodore -
> 
> I appreciate you showing the LF executive salary numbers are not quite as high as I noted. My numbers may have been inflated, but I've definitely seen a $900,000 package for at least one executive reported in the press (an executive who was transferred in from a F100 company which is close to the LF).
> 
> On the other hand, they are pretty damn high salaries for a non-profit. Are they appropriate? Depends. There are no stockholders and no profits, just a pretty substantial net worth.
> 
> Regarding the organizaton of "Linux, Inc." as  a hierachical control structure - I'll just point out that hierarchical control of the development of Linux suggests that it is not at all a "community project" (if it ever was). It's a product development organization with multiple levels of management.
> 
> Yet the developers are employees of a small number of major corporations. In this sense, it is like a "joint venture" among those companies.
> 
> To the extent that those companies gain (partial) control of the Linux kernel, as appears to be the case, I think Linux misrepresents itself as a "community project", and in particular, the actual users of the software may have little say in the direction development takes going forwards.
> 
> There's little safeguard, for example, against "senior management" biases in support of certain vendors, if other vendors are excluded from effective participation by one of many techniques. In other words, there's no way it can be a level playing field for innovation.
> 
> In that sense, the Linux kernel community has reached a point very much like Microsoft Windows development reached in 1990 or so. I note that date because at that point, Microsoft was challenged with a variety of anti-trust actions based on the fact that it used its Windows monopoly status to put competitors in the application space, and competitors producing innovative operating systems out of business (GO Computer Corporation being one example of many).
> 
> This troubles me. It may not trouble the developers who are in the Linux community and paid by the cartel of companies that control its direction.
> 
> I have no complaint about the technical competence of individual developers - the quality is pretty high, at least as good as those who worked on Windows and macOS. But it's becoming clear that their is a narrowing of control of an OS that has a lot of influence in a few hands. That those few hands don't work for one company doesn't eliminate its tendency to become a cartel. (one that is not transparent at all about functioning as such - preferring to give the impression that the kernel is developed by part-time voluntary "contributions").
> 
> The contrast with other open source communities is quite sharp now. There is little eleemosynary intent that can be detected any more. I think that is too bad, but things change.
> 
> This is just the personal opinion of someone who has been developing systems for 50+ years now. I'm kind of disappointed, but my opinion does not really matter much.
> 
> David
> 
> 
> 
> 
> On Monday, March 29, 2021 9:52pm, "Theodore Ts'o" <tytso@mit.edu> said:
>
>
>
>> On Mon, Mar 29, 2021 at 04:28:11PM -0400, David P. Reed wrote:
>> >
>> >
>> > What tends to shape Linux and FreeBSD, etc. are the money sources
>> > that flow into the communities. Of course Linux is quite
>> > independently wealthy now. The senior executives of the Linux
>> > Foundation are paid nearly a million dollars a year, each. Which
>> > just indicates that major corporations are seriously interested in
>> > controlling the evolution of Linux (not the Gnu part, the part that
>> > has Linus Torvalds at its center).
>> 
>> First of all, I don't believe your salary numbers are correct.
>> 
>> https://nonprofitlight.com/ca/san-francisco/linux-foundation
>> 
>> Secondly, the "senior executives" of the Linux Foundation don't have
>> any control over "the evolution of Linux". The exception to that are
>> the "Fellows" (e.g., Linus Torvalds, Greg K-H, etc.) and I can assure
>> you that they don't take orders from Jim Zemlin, the executive
>> director, or any one else at the Linux Foundation.
>> 
>> The senior developers of Linux do tend to work for the big
>> corporations, but culturally, we do try to keep our "corporate hats"
>> and our "community" hats quite separate, and identify when we our
>> company hats on. Many senior developers have transitioned between
>> multiple companies, and over time, it's been understood that their
>> primarily allegiance is to Linux, and not to the company. In fact,
>> the primary job of maintainers is to say "no" to companies when they
>> try to push crap code into the kernel. And that's because it's the
>> maintainer's responsibility to clean up the mess if they say yes to
>> code that's Just Not Ready, since they have a long-term responsbility
>> towards their subsystem, unlike engineers or contractors that only
>> have a short-term goal to get the code upstream.
>> 
>> This is where having a hierarchial ownership model IMHO works better
>> than a "core team" model where there can be a diffusion of
>> responsibility, where anyone with a commit bit can commit anywhere in
>> the OS. In contrast, David Miller "owns" the networking area, and so
>> someone who might be, say, the ext4 or xfs maintainer does not have
>> the right (read: Linus will reject a pull request from me if I try to
>> change code in the networking stack with out DaveM's signoff) to
>> change code outside of their subsystem.
>> 
>> So you're right that Linus probably doesn't know or care about
>> bufferbloat. He's delegated pretty much all networking issues to
>> David Miller as the networking czar, and within networking, David
>> Miller has his submaintainers with different specialities. This does
>> get complicated when there are changes which cross subsystems. For
>> example, before Wireguard could land in the kernel, there were changes
>> needed in both the crypto and networking layers, and Jason had to
>> negotiate with multiple senior developers in those subsystems, and the
>> code was subject to quite a lot of review before it could land. (It
>> took months, and we didn't try to rush things before a major
>> release....)
>> 
>> > I just spent 9 months trying to get a very tiny fix to the Linux
>> > kernel into the mainline kernel. I actually gave up, because it
>> > seemed utterly pointless, even though it was clearly a design error
>> > that I was fixing, and I was trying to meet all the constraints on
>> > patches. No one was fighting me, no one said it was wrong.
>> 
>> It sounds like the real problem is no one was paying attention to you.
>> There is a *huge* number of changes going into the Linux kernel, and
>> so the the challenge is getting review bandwidth by the relevant
>> maintainers. Blindly posting to the linux-kernel mailing list will
>> generally not get you very far.
>> 
>> The Linux development process is not really optimized for "drive by
>> patching". Knowng where (and to whom) a patch needs to be reviewed is
>> not necessarily easy for a novice, and while there are tools such as
>> ./scripts/get_maintainer.pl that try to make it a bit easier, I can
>> see how someone who Just Wants To Get A Single Patch accepted, can see
>> it as "bureaucracy".
>> 
>> Cheers,
>> 
>> - Ted
>>
--===============8020392847907646789==
Content-Type: text/plain; CHARSET=utf-8
Content-Transfer-Encoding: BASE64
Content-ID: <nycvar.QRO.7.76.6.2103301859471.13312@qynat-yncgbc>
Content-Description: 
Content-Disposition: INLINE

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWFrZS13aWZp
LWZhc3QgbWFpbGluZyBsaXN0Ck1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9tYWtlLXdpZmktZmFzdA==

--===============8020392847907646789==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8020392847907646789==--
