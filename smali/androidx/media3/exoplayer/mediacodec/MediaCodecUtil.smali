.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final decoderInfosCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    return-void
.end method

.method public static applyWorkarounds(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_0

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "OMX.google.raw.decoder"

    const-string v3, "audio/raw"

    const-string v4, "audio/raw"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-ge p0, v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "audio/eac3"

    return-object p0

    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "video/hevc"

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "video/avc"

    return-object p0

    :cond_2
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "video/av01"

    return-object p0

    :cond_3
    :goto_0
    return-object v2

    :cond_4
    const-string/jumbo p0, "video/mv-hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "video/hevcdv"

    return-object p0

    :cond_2
    const-string p0, "OMX.RTK.video.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_3
    const-string/jumbo p0, "video/dv_hevc"

    return-object p0

    :cond_4
    const-string/jumbo p0, "video/mv-hevc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "c2.qti.mvhevc.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "c2.qti.mvhevc.decoder.secure"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_5
    const-string/jumbo p0, "video/x-mvhevc"

    return-object p0

    :cond_6
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_7
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_8
    const-string p0, "audio/ac3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "OMX.lge.ac3.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "audio/lg-ac3"

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 32

    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-nez v3, :cond_0

    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_0
    const-string v6, "\\."

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "video/dolby-vision"

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v16, 0x200

    const/16 v17, 0x100

    const/16 v18, 0x80

    const/16 v19, 0x40

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v5, 0x8

    const/16 v8, 0x10

    const/16 v22, 0x400

    const/4 v11, 0x4

    const/16 v23, 0x800

    const/4 v14, 0x3

    const/16 v24, 0x1000

    const-string v15, "CodecSpecificDataUtil"

    const/4 v7, 0x2

    if-eqz v0, :cond_1f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    array-length v5, v6

    const-string v11, "Ignoring malformed Dolby Vision codec string: "

    if-ge v5, v14, :cond_1

    invoke-static {v11, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_1
    sget-object v5, Landroidx/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/16 v26, 0x0

    aget-object v13, v6, v1

    invoke-virtual {v5, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v11, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "10"

    const-string v13, "09"

    const-string v11, "08"

    const-string v10, "07"

    const-string v9, "06"

    const-string v12, "05"

    move/from16 v27, v7

    const-string v7, "04"

    move/from16 v28, v1

    const-string v1, "03"

    const-string v14, "02"

    move-object/from16 v30, v0

    const-string v0, "01"

    if-nez v3, :cond_3

    move-object/from16 v31, v4

    :goto_0
    move-object/from16 v4, v21

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v31

    sparse-switch v31, :sswitch_data_0

    :goto_1
    move-object/from16 v31, v4

    :goto_2
    const/4 v4, -0x1

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v31, v4

    const/16 v4, 0xa

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v31, v4

    const/16 v4, 0x9

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v31, v4

    const/16 v4, 0x8

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    goto :goto_1

    :cond_7
    move-object/from16 v31, v4

    const/4 v4, 0x7

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    goto :goto_1

    :cond_8
    move-object/from16 v31, v4

    const/4 v4, 0x6

    goto :goto_3

    :sswitch_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    goto :goto_1

    :cond_9
    move-object/from16 v31, v4

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    goto :goto_1

    :cond_a
    move-object/from16 v31, v4

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    goto :goto_1

    :cond_b
    move-object/from16 v31, v4

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_8
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_c

    goto :goto_1

    :cond_c
    move-object/from16 v31, v4

    move/from16 v4, v27

    goto :goto_3

    :sswitch_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    goto :goto_1

    :cond_d
    move-object/from16 v31, v4

    move/from16 v4, v28

    goto :goto_3

    :sswitch_a
    move-object/from16 v31, v4

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_2

    :cond_e
    move/from16 v4, v26

    :goto_3
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v4, v22

    goto :goto_4

    :pswitch_1
    move-object/from16 v4, v16

    goto :goto_4

    :pswitch_2
    move-object/from16 v4, v17

    goto :goto_4

    :pswitch_3
    move-object/from16 v4, v18

    goto :goto_4

    :pswitch_4
    move-object/from16 v4, v19

    goto :goto_4

    :pswitch_5
    move-object/from16 v4, v20

    goto :goto_4

    :pswitch_6
    move-object v4, v8

    goto :goto_4

    :pswitch_7
    move-object/from16 v4, v31

    goto :goto_4

    :pswitch_8
    move-object/from16 v4, v30

    goto :goto_4

    :pswitch_9
    move-object/from16 v4, v25

    goto :goto_4

    :pswitch_a
    move-object v4, v2

    :goto_4
    if-nez v4, :cond_f

    const-string v0, "Unknown Dolby Vision profile string: "

    invoke-static {v0, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_f
    aget-object v3, v6, v27

    if-nez v3, :cond_10

    :goto_5
    move-object/from16 v2, v21

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_7

    :sswitch_b
    const-string v0, "13"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_7

    :sswitch_c
    const-string v0, "12"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_7

    :sswitch_d
    const-string v0, "11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_7

    :sswitch_e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_7

    :sswitch_f
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/16 v1, 0x8

    goto :goto_7

    :sswitch_10
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    const/4 v1, 0x7

    goto :goto_7

    :sswitch_11
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6

    :cond_17
    const/4 v1, 0x6

    goto :goto_7

    :sswitch_12
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    const/4 v1, 0x5

    goto :goto_7

    :sswitch_13
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6

    :cond_19
    const/4 v1, 0x4

    goto :goto_7

    :sswitch_14
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    :cond_1a
    const/4 v1, 0x3

    goto :goto_7

    :sswitch_15
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    move/from16 v1, v27

    goto :goto_7

    :sswitch_16
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    move/from16 v1, v28

    goto :goto_7

    :sswitch_17
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_6

    :cond_1d
    move/from16 v1, v26

    :goto_7
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_b
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :pswitch_c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :pswitch_d
    move-object/from16 v2, v22

    goto :goto_8

    :pswitch_e
    move-object/from16 v2, v16

    goto :goto_8

    :pswitch_f
    move-object/from16 v2, v17

    goto :goto_8

    :pswitch_10
    move-object/from16 v2, v18

    goto :goto_8

    :pswitch_11
    move-object/from16 v2, v19

    goto :goto_8

    :pswitch_12
    move-object/from16 v2, v20

    goto :goto_8

    :pswitch_13
    move-object v2, v8

    goto :goto_8

    :pswitch_14
    move-object/from16 v2, v31

    goto :goto_8

    :pswitch_15
    move-object/from16 v2, v30

    goto :goto_8

    :pswitch_16
    move-object/from16 v2, v25

    :goto_8
    :pswitch_17
    if-nez v2, :cond_1e

    const-string v0, "Unknown Dolby Vision level string: "

    invoke-static {v0, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_1e
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1f
    move/from16 v28, v1

    move/from16 v27, v7

    const/16 v26, 0x0

    aget-object v0, v6, v26

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_9
    const/4 v0, -0x1

    goto/16 :goto_a

    :sswitch_18
    const-string/jumbo v1, "vp09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_9

    :cond_20
    const/4 v0, 0x7

    goto :goto_a

    :sswitch_19
    const-string/jumbo v1, "s263"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_9

    :cond_21
    const/4 v0, 0x6

    goto :goto_a

    :sswitch_1a
    const-string v1, "mp4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_9

    :cond_22
    const/4 v0, 0x5

    goto :goto_a

    :sswitch_1b
    const-string v1, "hvc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_9

    :cond_23
    const/4 v0, 0x4

    goto :goto_a

    :sswitch_1c
    const-string v1, "hev1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_9

    :cond_24
    const/4 v0, 0x3

    goto :goto_a

    :sswitch_1d
    const-string v1, "avc2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_9

    :cond_25
    move/from16 v0, v27

    goto :goto_a

    :sswitch_1e
    const-string v1, "avc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_9

    :cond_26
    move/from16 v0, v28

    goto :goto_a

    :sswitch_1f
    const-string v1, "av01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_9

    :cond_27
    move/from16 v0, v26

    :goto_a
    const/16 v1, 0x4000

    const v5, 0x8000

    const/high16 v7, 0x10000

    const/16 v9, 0x14

    const/16 v10, 0x2000

    packed-switch v0, :pswitch_data_2

    :goto_b
    return-object v21

    :pswitch_18
    array-length v0, v6

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x3

    if-ge v0, v2, :cond_28

    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_28
    :try_start_0
    aget-object v0, v6, v28

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, v6, v27

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2c

    move/from16 v2, v28

    if-eq v0, v2, :cond_2b

    move/from16 v2, v27

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    const/4 v2, -0x1

    :goto_c
    const/4 v3, -0x1

    goto :goto_d

    :cond_29
    const/16 v2, 0x8

    goto :goto_c

    :cond_2a
    const/4 v2, 0x4

    goto :goto_c

    :cond_2b
    const/4 v2, 0x2

    goto :goto_c

    :cond_2c
    const/4 v2, 0x1

    goto :goto_c

    :goto_d
    if-ne v2, v3, :cond_2d

    const-string v1, "Unknown VP9 profile: "

    invoke-static {v1, v0, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_2d
    const/16 v0, 0xa

    if-eq v1, v0, :cond_37

    const/16 v0, 0xb

    if-eq v1, v0, :cond_36

    if-eq v1, v9, :cond_35

    const/16 v0, 0x15

    if-eq v1, v0, :cond_34

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2e

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_33

    const/16 v0, 0x28

    if-eq v1, v0, :cond_32

    const/16 v0, 0x29

    if-eq v1, v0, :cond_31

    const/16 v0, 0x32

    if-eq v1, v0, :cond_30

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2f

    packed-switch v1, :pswitch_data_3

    const/4 v3, -0x1

    const/4 v8, -0x1

    goto :goto_f

    :pswitch_19
    move v8, v10

    :cond_2e
    :goto_e
    const/4 v3, -0x1

    goto :goto_f

    :pswitch_1a
    move/from16 v8, v24

    goto :goto_e

    :pswitch_1b
    move/from16 v8, v23

    goto :goto_e

    :cond_2f
    move/from16 v8, v16

    goto :goto_e

    :cond_30
    move/from16 v8, v17

    goto :goto_e

    :cond_31
    move/from16 v8, v18

    goto :goto_e

    :cond_32
    move/from16 v8, v19

    goto :goto_e

    :cond_33
    move/from16 v8, v20

    goto :goto_e

    :cond_34
    const/4 v3, -0x1

    const/16 v8, 0x8

    goto :goto_f

    :cond_35
    const/4 v3, -0x1

    const/4 v8, 0x4

    goto :goto_f

    :cond_36
    const/4 v3, -0x1

    const/4 v8, 0x2

    goto :goto_f

    :cond_37
    const/4 v3, -0x1

    const/4 v8, 0x1

    :goto_f
    if-ne v8, v3, :cond_38

    const-string v0, "Unknown VP9 level: "

    invoke-static {v0, v1, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_38
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_10
    move-object/from16 v5, v21

    goto/16 :goto_1b

    :pswitch_1c
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v0, v6

    const-string v1, "Ignoring malformed H263 codec string: "

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3a

    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_3a
    const/16 v28, 0x1

    :try_start_1
    aget-object v0, v6, v28

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v27, 0x2

    aget-object v2, v6, v27

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_1d
    array-length v0, v6

    const-string v1, "Ignoring malformed MP4A codec string: "

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3b

    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_3b
    const/16 v28, 0x1

    :try_start_2
    aget-object v0, v6, v28

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v27, 0x2

    aget-object v0, v6, v27

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_3c

    if-eq v0, v9, :cond_3d

    const/16 v2, 0x17

    if-eq v0, v2, :cond_3c

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_3c

    const/16 v2, 0x27

    if-eq v0, v2, :cond_3c

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3c

    packed-switch v0, :pswitch_data_4

    const/4 v0, -0x1

    const/4 v2, -0x1

    goto :goto_12

    :pswitch_1e
    const/4 v0, -0x1

    const/4 v2, 0x6

    goto :goto_12

    :pswitch_1f
    const/4 v0, -0x1

    const/4 v2, 0x5

    goto :goto_12

    :pswitch_20
    const/4 v0, -0x1

    const/4 v2, 0x4

    goto :goto_12

    :pswitch_21
    const/4 v0, -0x1

    const/4 v2, 0x3

    goto :goto_12

    :pswitch_22
    const/4 v0, -0x1

    const/4 v2, 0x2

    goto :goto_12

    :pswitch_23
    const/4 v0, -0x1

    const/4 v2, 0x1

    goto :goto_12

    :cond_3c
    :goto_11
    const/4 v0, -0x1

    goto :goto_12

    :cond_3d
    move v2, v9

    goto :goto_11

    :goto_12
    if-eq v2, v0, :cond_39

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    invoke-static {v1, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_24
    invoke-static {v3, v6, v4}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_25
    array-length v0, v6

    const-string v2, "Ignoring malformed AVC codec string: "

    const/4 v4, 0x2

    if-ge v0, v4, :cond_3e

    invoke-static {v2, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_3e
    const/16 v28, 0x1

    :try_start_3
    aget-object v0, v6, v28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x6

    if-ne v0, v9, :cond_3f

    aget-object v0, v6, v28

    move/from16 v9, v26

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v4, v6, v28

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_13

    :cond_3f
    array-length v0, v6

    const/4 v4, 0x3

    if-lt v0, v4, :cond_49

    const/16 v28, 0x1

    aget-object v0, v6, v28

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v27, 0x2

    aget-object v4, v6, v27

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_13
    const/16 v3, 0x42

    if-eq v0, v3, :cond_46

    const/16 v3, 0x4d

    if-eq v0, v3, :cond_45

    const/16 v3, 0x58

    if-eq v0, v3, :cond_44

    const/16 v3, 0x64

    if-eq v0, v3, :cond_43

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_42

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_41

    const/16 v3, 0xf4

    if-eq v0, v3, :cond_40

    const/4 v3, -0x1

    :goto_14
    const/4 v4, -0x1

    goto :goto_15

    :cond_40
    move/from16 v3, v19

    goto :goto_14

    :cond_41
    move/from16 v3, v20

    goto :goto_14

    :cond_42
    move v3, v8

    goto :goto_14

    :cond_43
    const/16 v3, 0x8

    goto :goto_14

    :cond_44
    const/4 v3, 0x4

    goto :goto_14

    :cond_45
    const/4 v3, 0x2

    goto :goto_14

    :cond_46
    const/4 v3, 0x1

    goto :goto_14

    :goto_15
    if-ne v3, v4, :cond_47

    const-string v1, "Unknown AVC profile: "

    invoke-static {v1, v0, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_47
    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    packed-switch v2, :pswitch_data_8

    packed-switch v2, :pswitch_data_9

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_17

    :pswitch_26
    move v1, v7

    :goto_16
    :pswitch_27
    const/4 v0, -0x1

    goto :goto_17

    :pswitch_28
    move v1, v5

    goto :goto_16

    :pswitch_29
    move v1, v10

    goto :goto_16

    :pswitch_2a
    move/from16 v1, v24

    goto :goto_16

    :pswitch_2b
    move/from16 v1, v23

    goto :goto_16

    :pswitch_2c
    move/from16 v1, v22

    goto :goto_16

    :pswitch_2d
    move/from16 v1, v16

    goto :goto_16

    :pswitch_2e
    move/from16 v1, v17

    goto :goto_16

    :pswitch_2f
    move/from16 v1, v18

    goto :goto_16

    :pswitch_30
    move/from16 v1, v19

    goto :goto_16

    :pswitch_31
    move/from16 v1, v20

    goto :goto_16

    :pswitch_32
    move v1, v8

    goto :goto_16

    :pswitch_33
    const/4 v0, -0x1

    const/16 v1, 0x8

    goto :goto_17

    :pswitch_34
    const/4 v0, -0x1

    const/4 v1, 0x4

    goto :goto_17

    :pswitch_35
    const/4 v0, -0x1

    const/4 v1, 0x1

    :goto_17
    if-ne v1, v0, :cond_48

    const-string v0, "Unknown AVC level: "

    invoke-static {v0, v2, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_48
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_49
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v21

    :catch_3
    invoke-static {v2, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_36
    array-length v0, v6

    const-string v2, "Ignoring malformed AV1 codec string: "

    const/4 v9, 0x4

    if-ge v0, v9, :cond_4a

    invoke-static {v2, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_4a
    const/16 v28, 0x1

    :try_start_5
    aget-object v0, v6, v28

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v11, 0x2

    aget-object v12, v6, v11

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v29, 0x3

    aget-object v6, v6, v29

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_4b

    const-string v1, "Unknown AV1 profile: "

    invoke-static {v1, v0, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_4b
    const/16 v0, 0x8

    if-eq v2, v0, :cond_4c

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4c

    const-string v0, "Unknown AV1 bit depth: "

    invoke-static {v0, v2, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_4c
    if-ne v2, v0, :cond_4d

    move/from16 v2, v28

    goto :goto_18

    :cond_4d
    if-eqz v4, :cond_4f

    iget-object v2, v4, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-nez v2, :cond_4e

    iget v2, v4, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4f

    :cond_4e
    move/from16 v2, v24

    goto :goto_18

    :cond_4f
    move v2, v11

    :goto_18
    packed-switch v12, :pswitch_data_a

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto/16 :goto_1a

    :pswitch_37
    const/high16 v1, 0x800000

    :goto_19
    :pswitch_38
    const/4 v0, -0x1

    goto/16 :goto_1a

    :pswitch_39
    const/high16 v1, 0x400000

    goto :goto_19

    :pswitch_3a
    const/high16 v1, 0x200000

    goto :goto_19

    :pswitch_3b
    const/high16 v1, 0x100000

    goto :goto_19

    :pswitch_3c
    const/high16 v1, 0x80000

    goto :goto_19

    :pswitch_3d
    const/high16 v1, 0x40000

    goto :goto_19

    :pswitch_3e
    const/high16 v1, 0x20000

    goto :goto_19

    :pswitch_3f
    move v1, v7

    goto :goto_19

    :pswitch_40
    move v1, v5

    goto :goto_19

    :pswitch_41
    move v1, v10

    goto :goto_19

    :pswitch_42
    move/from16 v1, v24

    goto :goto_19

    :pswitch_43
    move/from16 v1, v23

    goto :goto_19

    :pswitch_44
    move/from16 v1, v22

    goto :goto_19

    :pswitch_45
    move/from16 v1, v16

    goto :goto_19

    :pswitch_46
    move/from16 v1, v17

    goto :goto_19

    :pswitch_47
    move/from16 v1, v18

    goto :goto_19

    :pswitch_48
    move/from16 v1, v19

    goto :goto_19

    :pswitch_49
    move/from16 v1, v20

    goto :goto_19

    :pswitch_4a
    move v1, v8

    goto :goto_19

    :pswitch_4b
    move v1, v0

    goto :goto_19

    :pswitch_4c
    move v1, v9

    goto :goto_19

    :pswitch_4d
    move v1, v11

    goto :goto_19

    :pswitch_4e
    move/from16 v1, v28

    goto :goto_19

    :goto_1a
    if-ne v1, v0, :cond_50

    const-string v0, "Unknown AV1 level: "

    invoke-static {v0, v12, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-object v21

    :cond_50
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_4
    invoke-static {v2, v3, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :goto_1b
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_a
        0x601 -> :sswitch_9
        0x602 -> :sswitch_8
        0x603 -> :sswitch_7
        0x604 -> :sswitch_6
        0x605 -> :sswitch_5
        0x606 -> :sswitch_4
        0x607 -> :sswitch_3
        0x608 -> :sswitch_2
        0x609 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x601 -> :sswitch_17
        0x602 -> :sswitch_16
        0x603 -> :sswitch_15
        0x604 -> :sswitch_14
        0x605 -> :sswitch_13
        0x606 -> :sswitch_12
        0x607 -> :sswitch_11
        0x608 -> :sswitch_10
        0x609 -> :sswitch_f
        0x61f -> :sswitch_e
        0x620 -> :sswitch_d
        0x621 -> :sswitch_c
        0x622 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x2dd8f6 -> :sswitch_1f
        0x2ddf23 -> :sswitch_1e
        0x2ddf24 -> :sswitch_1d
        0x30d038 -> :sswitch_1c
        0x310dbc -> :sswitch_1b
        0x333790 -> :sswitch_1a
        0x35091c -> :sswitch_19
        0x374e43 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_36
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_1d
        :pswitch_1c
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x14
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x28
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x32
        :pswitch_27
        :pswitch_28
        :pswitch_26
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_38
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_37
    .end packed-switch
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 6

    const-string v0, "MediaCodecList API didn\'t list secure decoder for: "

    const-class v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v1

    return-object v4

    :cond_0
    :try_start_1
    const-string/jumbo v4, "video/mv-hevc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v5, p1, p2, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(ZZZ)V

    invoke-static {v2, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-gt p1, v4, :cond_1

    new-instance p1, Landroidx/transition/Transition$1;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroidx/transition/Transition$1;-><init>(I)V

    invoke-static {v2, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MediaCodecUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Assuming: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const-string/jumbo v4, "secure-playback"

    const-string/jumbo v5, "tunneled-playback"

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-interface {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v15

    invoke-interface {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v7

    const/16 v16, 0x0

    move/from16 v9, v16

    :goto_0
    if-ge v9, v15, :cond_10

    invoke-interface {v2, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_1
    move/from16 v18, v7

    move/from16 v17, v9

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    move v13, v9

    invoke-static {v0, v12, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v9, :cond_3

    :cond_2
    :goto_2
    move/from16 v18, v7

    move/from16 v17, v13

    goto/16 :goto_c

    :cond_3
    :try_start_1
    invoke-virtual {v0, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    invoke-interface {v2, v5, v9, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v17

    invoke-interface {v2, v5, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v18

    iget-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v11, :cond_4

    if-nez v18, :cond_2

    :cond_4
    if-eqz v11, :cond_5

    if-nez v17, :cond_5

    :goto_3
    goto :goto_2

    :cond_5
    invoke-interface {v2, v4, v9, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11

    invoke-interface {v2, v4, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v17

    if-nez v3, :cond_6

    if-nez v17, :cond_2

    :cond_6
    if-eqz v3, :cond_7

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    const/16 v17, 0x1

    const/16 v1, 0x1d

    if-lt v10, v1, :cond_8

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v1

    :goto_4
    move/from16 v18, v7

    move-object v7, v12

    goto :goto_5

    :cond_8
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    xor-int/lit8 v1, v1, 0x1

    goto :goto_4

    :goto_5
    :try_start_2
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v19, v0

    const/16 v0, 0x1d

    if-lt v10, v0, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v17

    goto :goto_6

    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "omx.google."

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "c2.android."

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "c2.google."

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v17, v16

    :goto_6
    if-eqz v18, :cond_c

    if-eq v3, v11, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    move-object v10, v14

    goto :goto_9

    :cond_c
    :goto_8
    if-nez v18, :cond_e

    if-nez v3, :cond_e

    goto :goto_7

    :goto_9
    const/4 v14, 0x0

    move v11, v1

    move v1, v13

    move/from16 v13, v17

    :try_start_3
    invoke-static/range {v7 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move/from16 v17, v1

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move/from16 v17, v1

    move-object v1, v7

    goto :goto_b

    :cond_e
    move v0, v11

    move-object v10, v14

    move v11, v1

    move v1, v13

    move/from16 v13, v17

    if-nez v18, :cond_d

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".secure"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v14, 0x1

    move/from16 v17, v1

    move-object v1, v7

    move-object v7, v0

    :try_start_4
    invoke-static/range {v7 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v1, v7

    :goto_a
    move/from16 v17, v13

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 v18, v7

    move-object v1, v12

    goto :goto_a

    :goto_b
    :try_start_5
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v10, 0x17

    const-string v11, "MediaCodecUtil"

    if-gt v7, v10, :cond_f

    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping codec "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v18

    goto/16 :goto_0

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_10
    :goto_d
    return-object v6

    :catch_4
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    const-string v2, "Failed to query underlying media codecs"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;ZZ)Lcom/google/common/collect/RegularImmutableList;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    if-nez p0, :cond_4

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p0, p2, :cond_2

    const-string p2, "OMX.SEC.aac.dec"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const-string/jumbo p2, "samsung"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "zerolte"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "zenlte"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SC-05G"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "marinelteatt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "404SC"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SC-04G"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SCV31"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x17

    if-gt p0, p2, :cond_3

    const-string p0, "audio/eac3-joc"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "omx.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.ffmpeg."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.sec."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.android."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
