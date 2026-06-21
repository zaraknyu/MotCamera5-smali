.class public abstract Lcom/motorola/camera/VideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

.field public static final ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_QHD_2K:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_SPLIT:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_SQUARE:Ljava/util/List;

.field public static final TRUE_BYTE:Ljava/lang/Byte;

.field public static final UNSUPPORTED_VIDEO_SIZES_DESKTOP:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9_2:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    sget-object v10, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-static {v1, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE_2:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_SQUARE:Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_8K_SQUARE:Landroid/util/Size;

    invoke-static {v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_SQUARE:Ljava/util/List;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V16:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V16_2:Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->DV_FHD_9V22:Landroid/util/Size;

    sget-object v6, Lcom/motorola/camera/VideoFormat;->DV_UHD_9V16:Landroid/util/Size;

    sget-object v7, Lcom/motorola/camera/VideoFormat;->DV_UHD_9V22:Landroid/util/Size;

    sget-object v8, Lcom/motorola/camera/VideoFormat;->DV_UHD_8K_9V16:Landroid/util/Size;

    sget-object v9, Lcom/motorola/camera/VideoFormat;->DV_UHD_8K_9V22:Landroid/util/Size;

    invoke-static/range {v3 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_SPLIT:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;

    sget-object v2, Lcom/motorola/camera/VideoFormat;->QHD_2K:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->QHD_2K_20V9:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_QHD_2K:Ljava/util/List;

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->FHD_21V9:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->FHD_21V9_2:Landroid/util/Size;

    invoke-static {v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/motorola/camera/VideoHelper;->ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sput-object v5, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    move-object/from16 v16, v2

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    move-object/from16 v28, v3

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_8K_20V9:Landroid/util/Size;

    move-object/from16 v29, v4

    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_8K_20P5V9:Landroid/util/Size;

    move-object v6, v5

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_8K_22V9:Landroid/util/Size;

    move-object v7, v6

    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_6K:Landroid/util/Size;

    move-object v8, v7

    sget-object v7, Lcom/motorola/camera/VideoFormat;->UHD_6K_39V18:Landroid/util/Size;

    move-object v9, v8

    sget-object v8, Lcom/motorola/camera/VideoFormat;->UHD_6K_21V9:Landroid/util/Size;

    move-object v11, v9

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_5K:Landroid/util/Size;

    move-object v12, v11

    sget-object v11, Lcom/motorola/camera/VideoFormat;->EQU_4K:Landroid/util/Size;

    move-object v13, v12

    sget-object v12, Lcom/motorola/camera/VideoFormat;->UHD_4K_19V9:Landroid/util/Size;

    move-object v14, v13

    sget-object v13, Lcom/motorola/camera/VideoFormat;->UHD_4K_19P5V9:Landroid/util/Size;

    move-object v15, v14

    sget-object v14, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9:Landroid/util/Size;

    move-object/from16 v17, v15

    sget-object v15, Lcom/motorola/camera/VideoFormat;->UHD_4K_20P5V9:Landroid/util/Size;

    move-object/from16 v18, v17

    sget-object v17, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_2:Landroid/util/Size;

    move-object/from16 v19, v18

    sget-object v18, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_3:Landroid/util/Size;

    move-object/from16 v20, v19

    sget-object v19, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9:Landroid/util/Size;

    move-object/from16 v21, v20

    sget-object v20, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9_2:Landroid/util/Size;

    move-object/from16 v22, v21

    sget-object v21, Lcom/motorola/camera/VideoFormat;->EQU_FHD:Landroid/util/Size;

    sget-object v23, Lcom/motorola/camera/VideoFormat;->FHD_18V9:Landroid/util/Size;

    sget-object v24, Lcom/motorola/camera/VideoFormat;->FHD_19V9:Landroid/util/Size;

    sget-object v25, Lcom/motorola/camera/VideoFormat;->FHD_19P5V9:Landroid/util/Size;

    sget-object v26, Lcom/motorola/camera/VideoFormat;->FHD_20V9:Landroid/util/Size;

    sget-object v27, Lcom/motorola/camera/VideoFormat;->FHD_20P5V9:Landroid/util/Size;

    sget-object v30, Lcom/motorola/camera/VideoFormat;->FHD_22V9:Landroid/util/Size;

    sget-object v31, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    sget-object v32, Lcom/motorola/camera/VideoFormat;->HD_18V9:Landroid/util/Size;

    sget-object v33, Lcom/motorola/camera/VideoFormat;->HD_19V9:Landroid/util/Size;

    sget-object v34, Lcom/motorola/camera/VideoFormat;->HD_19P5V9:Landroid/util/Size;

    sget-object v35, Lcom/motorola/camera/VideoFormat;->HD_20V9:Landroid/util/Size;

    sget-object v36, Lcom/motorola/camera/VideoFormat;->HD_20P5V9:Landroid/util/Size;

    sget-object v37, Lcom/motorola/camera/VideoFormat;->HD_20P5V9_2:Landroid/util/Size;

    move-object/from16 v38, v1

    new-instance v1, Landroid/util/Size;

    move-object/from16 v39, v2

    const/16 v2, 0x2d0

    move-object/from16 v40, v3

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    move-object/from16 v41, v1

    const/16 v1, 0x2c0

    invoke-direct {v2, v1, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x160

    move-object/from16 v42, v2

    const/16 v2, 0x120

    invoke-direct {v1, v3, v2}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v39, v42

    move-object/from16 v40, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v38

    move-object/from16 v38, v41

    filled-new-array/range {v2 .. v40}, [Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_VIDEO_FORMAT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_VIDEO_SIZES_DESKTOP:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_UNSUPPORTED_UHD_SIZE_DESKTOP:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public static getAudioDevice()Landroid/media/AudioDeviceInfo;
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isMicExternal()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/motorola/camera/Util;->isExternalMicType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isMicExternal()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0xf

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "back"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitrateOfSize(ZLandroid/util/Size;I)I
    .locals 2

    sget-object v0, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0xc7e3e0

    return p0

    :cond_0
    const p0, 0xd59f80

    return p0

    :cond_1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const p0, 0x10b0760

    return p0

    :cond_2
    const p0, 0x1312d00

    return p0

    :cond_3
    sget-object v0, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x2160ec0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const p0, 0x1c9c380

    return p0

    :cond_4
    return v1

    :cond_5
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const p0, 0x2faf080

    return p0

    :cond_7
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_8

    const p0, 0x2cd29c0

    return p0

    :cond_8
    const p0, 0x3dfd240

    return p0

    :cond_9
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p0, :cond_a

    const p0, 0x337f980

    return p0

    :cond_a
    const p0, 0x4a62f80

    return p0

    :cond_b
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz p0, :cond_c

    const p0, 0x4692680

    return p0

    :cond_c
    const p0, 0x6422c40

    return p0

    :cond_d
    return p2
.end method

.method public static getCheckedAudioChannels(Landroid/media/AudioDeviceInfo;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    const-string v1, "VideoHelper"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    if-ge p0, p1, :cond_0

    const-string p1, "getCheckedAudioChannels: "

    invoke-static {p1, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return p0

    :cond_0
    return p1

    :cond_1
    const-string p0, "getCheckedAudioChannels empty"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getCheckedAudioSampleRate(Landroid/media/AudioDeviceInfo;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    const-string v1, "VideoHelper"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    if-ge p0, p1, :cond_0

    const-string p1, "getCheckedAudioSampleRate: "

    invoke-static {p1, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    return p0

    :cond_0
    return p1

    :cond_1
    const-string p0, "getCheckedAudioSampleRate: empty"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getFilteredVideoFormats(Ljava/util/List;Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v6, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_1

    const/16 v7, 0x18

    if-ne p2, v7, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v5

    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_1

    :cond_3
    :goto_2
    move-object v3, v4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getFormatForMode(I)Lcom/motorola/camera/VideoFormat;
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_AVAILABLE_SMVR_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-static {v1, p0}, Lcom/motorola/camera/Util;->getSplitList(Ljava/util/List;I)Ljava/util/LinkedList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    invoke-direct {v2, v1}, Lcom/motorola/camera/MtkAvailableSmvrModeData;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
    .locals 11

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v5

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, p0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/VideoFormat;

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v7

    if-le v2, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v0, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v7

    invoke-static {v5, v7}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_0

    const-string p0, "VideoHelper"

    const-string p1, "No suitable restricted video format size found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    sget-object p1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    const/4 p1, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v2, p1

    :goto_2
    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x1

    if-lt v6, v8, :cond_5

    move v6, v9

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-eqz v6, :cond_6

    const/16 v10, 0x7d1

    goto :goto_4

    :cond_6
    move v10, v9

    :goto_4
    invoke-static {v2, v10}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    move v2, p1

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_8
    :goto_6
    const/4 p1, 0x2

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

    goto :goto_7

    :cond_9
    sget-object v6, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    :goto_7
    invoke-static {v0, v2, v6, p1}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v6

    goto :goto_8

    :cond_a
    move-object v6, v4

    :goto_8
    if-nez v6, :cond_b

    sget-object v6, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-static {v0, v2, v6, p1}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v6

    :cond_b
    if-nez v6, :cond_c

    return-object v4

    :cond_c
    new-instance v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    sget-object v4, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    iget v10, v6, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-lt v4, v8, :cond_d

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    iget v4, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v4, v4

    :goto_a
    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Landroid/media/CamcorderProfile;F)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v4

    const/16 v6, 0x1e

    if-ne v3, p0, :cond_f

    if-nez v4, :cond_f

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v6

    const v8, 0x2ee00

    div-int/2addr v8, v3

    iput v8, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v6

    iget v8, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    div-int/2addr v8, v3

    iput v8, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    :cond_f
    new-instance v3, Landroid/util/Range;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {v3, v8, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    iput-object v0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    const/16 v5, 0x3c

    if-nez v3, :cond_10

    goto :goto_b

    :cond_10
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_IQ_DYNAMIC_FPS_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoIqDynamicFpsAllow()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v1, v3, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    :cond_11
    :goto_b
    const/16 v1, 0xd

    if-ne v1, p0, :cond_12

    iput v7, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ge p0, v0, :cond_12

    const/16 p0, 0xf

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_12

    iput-object p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOnAndAllowedSupported()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoNVMaxFpsSupported()I

    move-result p0

    if-eq p0, v6, :cond_13

    new-instance v0, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    :cond_13
    if-eqz v4, :cond_15

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    iget-object v3, v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    iget v1, v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    iget-object v4, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance p0, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    int-to-float p0, v1

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    :cond_15
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->HEVC_FOR_ALL_RESOLUTIONS:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_16

    iput v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    goto/16 :goto_e

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p0, 0x7

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iget-object p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget-object p1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-ne p1, v6, :cond_17

    const v0, 0x1312d00

    goto :goto_c

    :cond_17
    if-ne p1, v5, :cond_1a

    const v0, 0x1e84800

    goto :goto_c

    :cond_18
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    if-ne p1, v6, :cond_19

    const v0, 0x2faf080

    goto :goto_c

    :cond_19
    if-ne p1, v5, :cond_1a

    const v0, 0x3c14dc0

    :cond_1a
    :goto_c
    iput v0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    goto :goto_e

    :cond_1b
    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    iget-object v4, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v4, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_d

    :cond_1c
    if-eqz p0, :cond_1d

    move p1, v3

    :cond_1d
    iput p1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iget-object p1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget v0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    goto :goto_e

    :cond_1e
    :goto_d
    if-eqz p0, :cond_1f

    if-eqz v0, :cond_1f

    move p1, v3

    :cond_1f
    iput p1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    if-eqz p0, :cond_20

    if-eqz v0, :cond_20

    move v7, v9

    :cond_20
    iget-object p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget p1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {v7, p0, p1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    :goto_e
    return-object v2
.end method

.method public static getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v0

    new-instance v1, Lcom/motorola/camera/VideoFormat;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/settings/Setting;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;
    .locals 9

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->IS_LIVESHOT_SIZE_SAME_AS_VIDEO_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_UPSCALE_SIZES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, v5, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_1
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_4

    new-instance v6, Landroid/util/Size;

    mul-int/lit8 v7, v5, 0x2

    aget v8, v1, v7

    add-int/2addr v7, v2

    aget v7, v1, v7

    invoke-direct {v6, v8, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/Size;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getJpegPictureSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object p1

    array-length v1, p1

    :goto_3
    if-ge v3, v1, :cond_8

    aget-object v2, p1, v3

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v4

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupportedByCurrentCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v0
.end method

.method public static getSpan(Landroid/util/Range;)I
    .locals 1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getSuperSlowMotionBaseFrameRate()I
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x78

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3c0

    rem-int/2addr v3, v2

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDVPreviewSize(Lcom/motorola/camera/PreviewSize;Z)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_SPLIT:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisableExternalDisplayVideoSize()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize(Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    return v0
.end method

.method public static isDisableExternalDisplayVideoSize(Lcom/motorola/camera/VideoFormat;)Z
    .locals 4

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Z

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 10
    :cond_2
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 12
    :cond_3
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Z

    if-eqz v0, :cond_4

    .line 13
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 14
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v1, :cond_6

    goto :goto_0

    .line 15
    :cond_4
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 16
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v1, :cond_6

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isMicExternal()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotificationPermissionRequired()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_0
    monitor-exit v0

    if-eqz v3, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_PERMISSION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    return v1
.end method

.method public static isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/VideoFormat;->VIDEO_RESOLUTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSnapshotSupportInConfigurations()Z
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_TABLE_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v3}, Lcom/motorola/camera/Util;->getSplitList(Ljava/util/List;I)Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/motorola/camera/VideoConfigurationsInfo;

    invoke-direct {v5, v4, v3}, Lcom/motorola/camera/VideoConfigurationsInfo;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoConfigurationsInfo;

    iget v5, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    iget-object v6, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v4, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method public static isSuperSlowMotionFrameRate(I)Z
    .locals 1

    const/16 v0, 0x3c0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static requestAudioFocus(Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public static updateExternalDisplayLimitVideoSize()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    iget-object v4, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v5, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v5, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v4, v5}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-gt v4, v5, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
