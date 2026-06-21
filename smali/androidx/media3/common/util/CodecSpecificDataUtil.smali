.class public abstract Landroidx/media3/common/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field public static final NAL_START_CODE:[B

.field public static final PROFILE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_0

    const/16 p1, 0x48

    goto :goto_0

    :cond_0
    const/16 p1, 0x4c

    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p0, p2, p3, p1, p5}, [Ljava/lang/Object;

    move-result-object p0

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "hvc1.%s%d.%X.%c%d"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p4

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    aget p1, p4, p1

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_2

    aget p2, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, ".%02X"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 11

    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const-string v2, "CodecSpecificDataUtil"

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    invoke-static {v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    sget-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v5, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v6, 0x1000

    const/4 v7, 0x6

    if-eqz v0, :cond_2

    move p0, v5

    goto :goto_0

    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget p0, p2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-ne p0, v7, :cond_3

    move p0, v6

    goto :goto_0

    :cond_3
    move p0, v1

    goto :goto_0

    :cond_4
    const-string p2, "6"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    move p0, v7

    :goto_0
    const/4 p2, 0x3

    aget-object p1, p1, p2

    if-nez p1, :cond_5

    :goto_1
    move-object p2, v3

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_2
    move v7, v10

    goto/16 :goto_3

    :sswitch_0
    const-string p2, "L186"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0x19

    goto/16 :goto_3

    :sswitch_1
    const-string p2, "L183"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v7, 0x18

    goto/16 :goto_3

    :sswitch_2
    const-string p2, "L180"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v7, 0x17

    goto/16 :goto_3

    :sswitch_3
    const-string p2, "L156"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v7, 0x16

    goto/16 :goto_3

    :sswitch_4
    const-string p2, "L153"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 v7, 0x15

    goto/16 :goto_3

    :sswitch_5
    const-string p2, "L150"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    const/16 v7, 0x14

    goto/16 :goto_3

    :sswitch_6
    const-string p2, "L123"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_2

    :cond_c
    const/16 v7, 0x13

    goto/16 :goto_3

    :sswitch_7
    const-string p2, "L120"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_2

    :cond_d
    const/16 v7, 0x12

    goto/16 :goto_3

    :sswitch_8
    const-string p2, "H186"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_2

    :cond_e
    const/16 v7, 0x11

    goto/16 :goto_3

    :sswitch_9
    const-string p2, "H183"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_2

    :cond_f
    move v7, v8

    goto/16 :goto_3

    :sswitch_a
    const-string p2, "H180"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v7, 0xf

    goto/16 :goto_3

    :sswitch_b
    const-string p2, "H156"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_c
    const-string p2, "H153"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_d
    const-string p2, "H150"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_e
    const-string p2, "H123"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_f
    const-string p2, "H120"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_10
    const-string p2, "L93"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_11
    const-string p2, "L90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_2

    :cond_17
    move v7, v9

    goto/16 :goto_3

    :sswitch_12
    const-string p2, "L63"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_2

    :cond_18
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_13
    const-string p2, "L60"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto/16 :goto_2

    :sswitch_14
    const-string p2, "L30"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_2

    :cond_19
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_15
    const-string p2, "H93"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move v7, v4

    goto :goto_3

    :sswitch_16
    const-string v0, "H90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_2

    :cond_1b
    move v7, p2

    goto :goto_3

    :sswitch_17
    const-string p2, "H63"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto/16 :goto_2

    :cond_1c
    move v7, v1

    goto :goto_3

    :sswitch_18
    const-string p2, "H60"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_2

    :cond_1d
    move v7, v5

    goto :goto_3

    :sswitch_19
    const-string p2, "H30"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto/16 :goto_2

    :cond_1e
    const/4 v7, 0x0

    :cond_1f
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/high16 p2, 0x1000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_1
    const/high16 p2, 0x400000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_2
    const/high16 p2, 0x100000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_3
    const/high16 p2, 0x40000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_4
    const/high16 p2, 0x10000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_5
    const/16 p2, 0x4000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_7
    const/16 p2, 0x400

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_8
    const/high16 p2, 0x2000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_9
    const/high16 p2, 0x800000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_a
    const/high16 p2, 0x200000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_b
    const/high16 p2, 0x80000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_c
    const/high16 p2, 0x20000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_d
    const p2, 0x8000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_e
    const/16 p2, 0x2000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_f
    const/16 p2, 0x800

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_10
    const/16 p2, 0x100

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_11
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_15
    const/16 p2, 0x200

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_16
    const/16 p2, 0x80

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_17
    const/16 p2, 0x20

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :pswitch_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_4
    if-nez p2, :cond_20

    const-string p0, "Unknown HEVC level string: "

    invoke-static {p0, p1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_20
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_21
    const-string p1, "Unknown HEVC profile string: "

    invoke-static {p1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
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
.end method
