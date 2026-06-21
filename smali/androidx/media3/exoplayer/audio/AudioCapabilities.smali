.class public final Landroidx/media3/exoplayer/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/RegularImmutableMap;

.field public static final DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public static final EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/RegularImmutableList;


# instance fields
.field public final encodingToAudioProfile:Landroid/util/SparseArray;

.field public final maxChannelCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    sget-object v1, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->DEFAULT_AUDIO_PROFILE:Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/RegularImmutableList;

    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/google/common/base/Splitter;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v1}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableList;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->encoding:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->maxChannelCount:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    return-void
.end method

.method public static getAudioProfiles([II)Lcom/google/common/collect/RegularImmutableList;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [I

    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    new-instance v3, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    invoke-direct {v3, v2, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    move-object/from16 v7, p3

    goto :goto_0

    .line 6
    :cond_0
    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v7, 0x0

    if-lt v6, v4, :cond_2

    .line 7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v6

    iget-object v6, v6, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v6, Landroid/media/AudioAttributes;

    .line 8
    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getAudioDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v7, Lcom/google/android/gms/tasks/zzad;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDeviceInfo;

    const/16 v8, 0xe

    invoke-direct {v7, v8, v6}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    .line 11
    :catch_0
    :cond_2
    :goto_0
    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v8, "android.hardware.type.automotive"

    const/16 v9, 0x17

    sget-object v10, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/RegularImmutableMap;

    const/16 v11, 0xc

    const/4 v12, 0x1

    if-lt v6, v4, :cond_9

    invoke-static/range {p0 .. p0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    if-lt v6, v9, :cond_9

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 13
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioAttributes;

    .line 14
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getDirectProfilesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 16
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 17
    new-instance v4, Ljava/util/HashSet;

    filled-new-array {v11}, [I

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7

    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioProfile;

    .line 20
    invoke-virtual {v2}, Landroid/media/AudioProfile;->getEncapsulationType()I

    move-result v4

    if-ne v4, v12, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v2}, Landroid/media/AudioProfile;->getFormat()I

    move-result v4

    .line 22
    invoke-static {v4}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    check-cast v4, Ljava/util/Set;

    .line 28
    invoke-virtual {v2}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 29
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 31
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    new-instance v4, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {v4, v5, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;-><init>(ILjava/util/Set;)V

    .line 35
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_8
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    return-object v1

    :cond_9
    const/4 v13, 0x4

    if-lt v6, v9, :cond_e

    if-nez v7, :cond_a

    .line 38
    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    goto :goto_4

    .line 39
    :cond_a
    new-array v3, v12, [Landroid/media/AudioDeviceInfo;

    iget-object v7, v7, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioDeviceInfo;

    aput-object v7, v3, v5

    .line 40
    :goto_4
    new-instance v7, Lcom/google/common/collect/ImmutableSet$Builder;

    .line 41
    invoke-direct {v7, v13}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    const/16 v14, 0x8

    .line 42
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v14, v15}, [Ljava/lang/Integer;

    move-result-object v14

    .line 43
    invoke-static {v1, v14}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->ensureRoomFor(I)V

    .line 45
    iget-object v15, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v12, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v14, v5, v15, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v12, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr v12, v1

    iput v12, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    const/16 v12, 0x1f

    if-lt v6, v12, :cond_b

    const/16 v12, 0x1a

    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v14, 0x1b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v12, v14}, [Ljava/lang/Integer;

    move-result-object v12

    .line 48
    invoke-static {v1, v12}, Lcom/google/common/collect/Maps;->checkElementsNotNull(I[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->ensureRoomFor(I)V

    .line 50
    iget-object v14, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v15, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v12, v5, v14, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v12, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr v12, v1

    iput v12, v7, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    :cond_b
    if-lt v6, v4, :cond_c

    const/16 v1, 0x1e

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    .line 54
    :cond_c
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 55
    array-length v4, v3

    move v6, v5

    :goto_5
    if-ge v6, v4, :cond_e

    aget-object v7, v3, v6

    .line 56
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 57
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-object v0

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 58
    :cond_e
    new-instance v1, Lcom/google/common/collect/ImmutableSet$Builder;

    .line 59
    invoke-direct {v1, v13}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    .line 61
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    const/16 v6, 0xa

    if-lt v3, v4, :cond_14

    invoke-static/range {p0 .. p0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    if-lt v3, v9, :cond_14

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 63
    :cond_f
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 64
    iget-object v3, v10, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    if-nez v3, :cond_10

    .line 65
    new-instance v3, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v4, v10, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v7, v10, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v3, v4, v5, v7}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 66
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v4, v10, v3}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;)V

    .line 67
    iput-object v4, v10, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    move-object v3, v4

    .line 68
    :cond_10
    invoke-virtual {v3}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 69
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {v5}, Landroidx/media3/common/util/Util;->getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I

    move-result v8

    if-ge v7, v8, :cond_12

    goto :goto_6

    .line 70
    :cond_12
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 71
    invoke-virtual {v7, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    .line 72
    invoke-virtual {v7, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    const v7, 0xbb80

    .line 73
    invoke-virtual {v5, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v7

    iget-object v7, v7, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioAttributes;

    .line 76
    invoke-static {v5, v7}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 77
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    goto :goto_6

    .line 78
    :cond_13
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    .line 82
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 83
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getAudioProfiles([II)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    return-object v0

    .line 84
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "use_external_surround_sound_flag"

    .line 86
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    move v4, v5

    :goto_7
    if-nez v4, :cond_17

    .line 87
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "Amazon"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "Xiaomi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_8

    :cond_16
    const/4 v3, 0x1

    goto :goto_9

    .line 88
    :cond_17
    :goto_8
    const-string v3, "external_surround_sound_enabled"

    .line 89
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 90
    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    :cond_18
    :goto_9
    if-eqz v0, :cond_1a

    if-nez v4, :cond_1a

    .line 92
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    .line 93
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1a

    .line 94
    const-string v2, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_19

    .line 95
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    .line 98
    :cond_19
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 99
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 100
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getAudioProfiles([II)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    return-object v2

    .line 102
    :cond_1a
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 103
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 104
    invoke-static {v1, v6}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getAudioProfiles([II)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    return-object v0
.end method

.method public static getCapabilitiesInternal(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {p0, v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_6

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    if-ne p0, p1, :cond_9

    return v0

    :cond_9
    return v2
.end method

.method public final getEncodingAndChannelConfigForPassthrough(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;
    .locals 13

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x12

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    if-ne v0, v5, :cond_1

    invoke-static {p0, v5}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-static {p0, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/16 v6, 0x1e

    if-ne v0, v6, :cond_4

    invoke-static {p0, v6}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->maxChannelCount:I

    iget-object v7, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->channelMasks:Lcom/google/common/collect/ImmutableSet;

    iget v8, p1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, -0x1

    if-eq v8, v12, :cond_b

    if-ne v0, v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p1, 0x21

    if-ge p0, p1, :cond_7

    if-le v8, v11, :cond_13

    goto/16 :goto_8

    :cond_7
    if-nez v7, :cond_8

    if-gt v8, v6, :cond_a

    move v10, v9

    goto :goto_1

    :cond_8
    invoke-static {v8}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    :cond_a
    :goto_1
    if-nez v10, :cond_13

    goto/16 :goto_8

    :cond_b
    :goto_2
    iget p1, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p1, v12, :cond_c

    goto :goto_3

    :cond_c
    const p1, 0xbb80

    :goto_3
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->encoding:I

    if-eqz v7, :cond_d

    goto :goto_6

    :cond_d
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_11

    move v6, v11

    :goto_4
    if-lez v6, :cond_10

    invoke-static {v6}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object v5

    iget-object v5, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v5, Landroid/media/AudioAttributes;

    invoke-static {v2, v5}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_10
    move v6, v10

    goto :goto_6

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p0}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    move-object p1, p0

    :cond_12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_6
    move v8, v6

    :cond_13
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_15

    if-ne v8, v1, :cond_14

    move v3, v4

    goto :goto_7

    :cond_14
    const/4 p1, 0x3

    if-eq v8, p1, :cond_16

    const/4 p1, 0x4

    if-eq v8, p1, :cond_16

    const/4 p1, 0x5

    if-ne v8, p1, :cond_15

    goto :goto_7

    :cond_15
    move v3, v8

    :cond_16
    :goto_7
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_17

    const-string p0, "fugu"

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    if-ne v3, v9, :cond_17

    const/4 v3, 0x2

    :cond_17
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p0

    if-nez p0, :cond_18

    :goto_8
    const/4 p0, 0x0

    return-object p0

    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    if-lt v0, v1, :cond_0

    invoke-virtual {v2}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v4, v0

    mul-int/2addr v4, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->encodingToAudioProfile:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
