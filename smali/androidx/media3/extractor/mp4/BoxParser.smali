.class public abstract Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "OpusHead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    return-void
.end method

.method public static parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 10

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p0

    move-wide v4, v3

    new-array v3, p0, [B

    const/4 v6, 0x0

    invoke-virtual {p1, v6, p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move-wide p0, v0

    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v8, -0x1

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v8

    :goto_0
    cmp-long v0, p0, v6

    if-lez v0, :cond_5

    move-wide v6, p0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    :cond_6
    :goto_2
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseFullBoxVersion(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    new-instance v4, Landroidx/media3/container/Mp4TimestampData;

    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v4
.end method

.method public static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v12, v5

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_b

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string/jumbo v7, "schi atom is mandatory"

    invoke-static {v7, v3}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v14, v5

    move v15, v14

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    :goto_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    if-ne v3, v6, :cond_a

    move-object v3, v10

    move v10, v6

    goto :goto_9

    :cond_a
    move-object v3, v10

    move v10, v5

    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v5, v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v5, v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    const-string/jumbo v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    return-object v16
.end method

.method public static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/common/util/TimedValueQueue;
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    new-instance v8, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-array v1, v11, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    const/4 v12, 0x0

    iput v12, v8, Landroidx/media3/common/util/TimedValueQueue;->size:I

    move v9, v12

    :goto_0
    if-ge v9, v11, :cond_9f

    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v12

    :goto_1
    const-string v6, "childAtomSize must be positive"

    invoke-static {v6, v4}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v13, 0x61766331

    if-eq v4, v13, :cond_9e

    const v13, 0x61766333

    if-eq v4, v13, :cond_9e

    const v13, 0x656e6376

    if-eq v4, v13, :cond_9e

    const v13, 0x6d317620

    if-eq v4, v13, :cond_9e

    const v13, 0x6d703476

    if-eq v4, v13, :cond_9e

    const v13, 0x68766331

    if-eq v4, v13, :cond_9e

    const v13, 0x68657631

    if-eq v4, v13, :cond_9e

    const v13, 0x73323633

    if-eq v4, v13, :cond_9e

    const v13, 0x48323633

    if-eq v4, v13, :cond_9e

    const v13, 0x68323633

    if-eq v4, v13, :cond_9e

    const v13, 0x76703038

    if-eq v4, v13, :cond_9e

    const v13, 0x76703039

    if-eq v4, v13, :cond_9e

    const v13, 0x61763031

    if-eq v4, v13, :cond_9e

    const v13, 0x64766176

    if-eq v4, v13, :cond_9e

    const v13, 0x64766131

    if-eq v4, v13, :cond_9e

    const v13, 0x64766865

    if-eq v4, v13, :cond_9e

    const v13, 0x64766831

    if-eq v4, v13, :cond_9e

    const v13, 0x61707631

    if-ne v4, v13, :cond_1

    move/from16 v6, p2

    move v1, v4

    move/from16 v45, v11

    move v11, v12

    :goto_2
    move/from16 v4, p1

    goto/16 :goto_67

    :cond_1
    const v13, 0x6d703461

    const-wide/16 v16, 0x0

    const v15, 0x61632d34

    const v14, 0x65632d33

    const v10, 0x61632d33

    const v1, 0x656e6361

    const v12, 0x616c6163

    if-eq v4, v13, :cond_c

    if-eq v4, v1, :cond_c

    if-eq v4, v10, :cond_c

    if-eq v4, v14, :cond_c

    if-eq v4, v15, :cond_c

    const v13, 0x6d6c7061

    if-eq v4, v13, :cond_c

    const v13, 0x64747363

    if-eq v4, v13, :cond_c

    const v13, 0x64747365

    if-eq v4, v13, :cond_c

    const v13, 0x64747368

    if-eq v4, v13, :cond_c

    const v13, 0x6474736c

    if-eq v4, v13, :cond_c

    const v13, 0x64747378

    if-eq v4, v13, :cond_c

    const v13, 0x73616d72

    if-eq v4, v13, :cond_c

    const v13, 0x73617762

    if-eq v4, v13, :cond_c

    const v13, 0x6c70636d

    if-eq v4, v13, :cond_c

    const v13, 0x736f7774

    if-eq v4, v13, :cond_c

    const v13, 0x74776f73

    if-eq v4, v13, :cond_c

    const v13, 0x2e6d7032

    if-eq v4, v13, :cond_c

    const v13, 0x2e6d7033

    if-eq v4, v13, :cond_c

    const v13, 0x6d686131

    if-eq v4, v13, :cond_c

    const v13, 0x6d686d31

    if-eq v4, v13, :cond_c

    if-eq v4, v12, :cond_c

    const v13, 0x616c6177

    if-eq v4, v13, :cond_c

    const v13, 0x756c6177

    if-eq v4, v13, :cond_c

    const v13, 0x4f707573

    if-eq v4, v13, :cond_c

    const v13, 0x664c6143

    if-eq v4, v13, :cond_c

    const v13, 0x69616d66

    if-ne v4, v13, :cond_2

    goto/16 :goto_8

    :cond_2
    const v1, 0x63363038

    const v6, 0x73747070

    const v10, 0x77767474

    const v12, 0x74783367

    const v13, 0x54544d4c

    if-eq v4, v13, :cond_6

    if-eq v4, v12, :cond_6

    if-eq v4, v10, :cond_6

    if-eq v4, v6, :cond_6

    if-ne v4, v1, :cond_3

    goto :goto_4

    :cond_3
    const v1, 0x6d657474

    if-ne v4, v1, :cond_5

    add-int/lit8 v6, v2, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-ne v4, v1, :cond_4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    :cond_4
    :goto_3
    move/from16 v24, v3

    move/from16 v21, v9

    move/from16 v45, v11

    const/4 v11, 0x0

    goto/16 :goto_68

    :cond_5
    const v1, 0x63616d6d

    if-ne v4, v1, :cond_4

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v4, "application/x-camera-motion"

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v4, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v14, v2, 0x10

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const-string v14, "application/ttml+xml"

    const-wide v20, 0x7fffffffffffffffL

    if-ne v4, v13, :cond_7

    :goto_5
    move-wide/from16 v12, v20

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    if-ne v4, v12, :cond_8

    add-int/lit8 v1, v3, -0x10

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v14

    const-string v1, "application/x-quicktime-tx3g"

    move-object v12, v14

    move-object v14, v1

    move-object v1, v12

    move-wide/from16 v12, v20

    goto :goto_7

    :cond_8
    if-ne v4, v10, :cond_9

    const-string v14, "application/x-mp4-vtt"

    goto :goto_5

    :cond_9
    if-ne v4, v6, :cond_a

    move-wide/from16 v12, v16

    goto :goto_6

    :cond_a
    if-ne v4, v1, :cond_b

    const/4 v1, 0x1

    iput v1, v8, Landroidx/media3/common/util/TimedValueQueue;->size:I

    const-string v14, "application/x-mp4-cea-608"

    goto :goto_5

    :goto_7
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput-wide v12, v4, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput-object v1, v4, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_8
    add-int/lit8 v13, v2, 0x10

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v13, 0x8

    const/4 v12, 0x6

    if-eqz p5, :cond_d

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v37

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v15, v37

    goto :goto_9

    :cond_d
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    :goto_9
    const/4 v14, 0x4

    const/16 v10, 0x10

    const/16 v40, 0x15

    const/high16 v41, 0x10000000

    const/4 v12, 0x2

    if-eqz v15, :cond_e

    const/4 v1, 0x1

    if-ne v15, v1, :cond_f

    :cond_e
    move/from16 v45, v11

    goto/16 :goto_e

    :cond_f
    if-ne v15, v12, :cond_1a

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v43

    move/from16 v45, v11

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v43

    and-int/lit8 v44, v43, 0x1

    if-eqz v44, :cond_10

    const/16 v44, 0x1

    goto :goto_a

    :cond_10
    const/16 v44, 0x0

    :goto_a
    and-int/lit8 v43, v43, 0x2

    if-eqz v43, :cond_11

    const/16 v43, 0x1

    goto :goto_b

    :cond_11
    const/16 v43, 0x0

    :goto_b
    const/16 v1, 0x20

    if-nez v44, :cond_18

    if-ne v15, v13, :cond_12

    const/4 v1, 0x3

    goto :goto_c

    :cond_12
    const/16 v12, 0x10

    if-ne v15, v12, :cond_14

    if-eqz v43, :cond_13

    move/from16 v1, v41

    goto :goto_c

    :cond_13
    const/4 v1, 0x2

    goto :goto_c

    :cond_14
    const/16 v12, 0x18

    if-ne v15, v12, :cond_16

    if-eqz v43, :cond_15

    const/high16 v1, 0x50000000

    goto :goto_c

    :cond_15
    move/from16 v1, v40

    goto :goto_c

    :cond_16
    if-ne v15, v1, :cond_19

    if-eqz v43, :cond_17

    const/high16 v1, 0x60000000

    goto :goto_c

    :cond_17
    const/16 v1, 0x16

    goto :goto_c

    :cond_18
    if-ne v15, v1, :cond_19

    move v1, v14

    goto :goto_c

    :cond_19
    const/4 v1, -0x1

    :goto_c
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v15, v10

    move v10, v11

    const/4 v12, 0x0

    move v11, v1

    :goto_d
    const v1, 0x69616d66

    goto :goto_f

    :cond_1a
    move/from16 v45, v11

    move/from16 v20, v2

    move/from16 v24, v3

    move/from16 v21, v9

    const/4 v11, 0x0

    goto/16 :goto_66

    :goto_e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v11

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v14

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    const/4 v1, 0x1

    if-ne v15, v1, :cond_1b

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1b
    move v15, v11

    const/4 v11, -0x1

    goto :goto_d

    :goto_f
    if-ne v4, v1, :cond_1c

    const/4 v1, -0x1

    const/4 v10, -0x1

    goto :goto_11

    :cond_1c
    const v1, 0x73616d72

    if-ne v4, v1, :cond_1d

    const/16 v1, 0x1f40

    :goto_10
    const/4 v10, 0x1

    goto :goto_11

    :cond_1d
    const v1, 0x73617762

    if-ne v4, v1, :cond_1e

    const/16 v1, 0x3e80

    goto :goto_10

    :cond_1e
    move v1, v15

    :goto_11
    iget v15, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const v13, 0x656e6361

    if-ne v4, v13, :cond_21

    invoke-static {v0, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_20

    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v7, :cond_1f

    const/4 v14, 0x0

    :goto_12
    move/from16 v46, v1

    goto :goto_13

    :cond_1f
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v14

    goto :goto_12

    :goto_13
    iget-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v1, v9

    goto :goto_14

    :cond_20
    move/from16 v46, v1

    move-object v14, v7

    :goto_14
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_15

    :cond_21
    move/from16 v46, v1

    move-object v14, v7

    :goto_15
    const-string v13, "audio/mhm1"

    const-string v47, "audio/ac4"

    const-string v48, "audio/eac3"

    const-string v49, "audio/ac3"

    const v1, 0x61632d33

    if-ne v4, v1, :cond_22

    move-object/from16 v1, v49

    goto/16 :goto_19

    :cond_22
    const v1, 0x65632d33

    if-ne v4, v1, :cond_23

    move-object/from16 v1, v48

    goto/16 :goto_19

    :cond_23
    const v1, 0x61632d34

    if-ne v4, v1, :cond_24

    move-object/from16 v1, v47

    goto/16 :goto_19

    :cond_24
    const v1, 0x64747363

    if-ne v4, v1, :cond_25

    const-string v1, "audio/vnd.dts"

    goto/16 :goto_19

    :cond_25
    const v1, 0x64747368

    if-eq v4, v1, :cond_3a

    const v1, 0x6474736c

    if-ne v4, v1, :cond_26

    goto/16 :goto_18

    :cond_26
    const v1, 0x64747365

    if-ne v4, v1, :cond_27

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_19

    :cond_27
    const v1, 0x64747378

    if-ne v4, v1, :cond_28

    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_19

    :cond_28
    const v1, 0x73616d72

    if-ne v4, v1, :cond_29

    const-string v1, "audio/3gpp"

    goto/16 :goto_19

    :cond_29
    const v1, 0x73617762

    if-ne v4, v1, :cond_2a

    const-string v1, "audio/amr-wb"

    goto/16 :goto_19

    :cond_2a
    const-string v1, "audio/raw"

    move-object/from16 v32, v1

    const v1, 0x736f7774

    if-ne v4, v1, :cond_2b

    :goto_16
    move-object/from16 v1, v32

    const/4 v11, 0x2

    goto/16 :goto_19

    :cond_2b
    const v1, 0x74776f73

    if-ne v4, v1, :cond_2c

    move-object/from16 v1, v32

    move/from16 v11, v41

    goto/16 :goto_19

    :cond_2c
    const v1, 0x6c70636d

    if-ne v4, v1, :cond_2e

    const/4 v1, -0x1

    if-ne v11, v1, :cond_2d

    goto :goto_16

    :cond_2d
    move-object/from16 v1, v32

    goto/16 :goto_19

    :cond_2e
    const v1, 0x2e6d7032

    if-eq v4, v1, :cond_39

    const v1, 0x2e6d7033

    if-ne v4, v1, :cond_2f

    goto :goto_17

    :cond_2f
    const v1, 0x6d686131

    if-ne v4, v1, :cond_30

    const-string v1, "audio/mha1"

    goto :goto_19

    :cond_30
    const v1, 0x6d686d31

    if-ne v4, v1, :cond_31

    move-object v1, v13

    goto :goto_19

    :cond_31
    const v1, 0x616c6163

    if-ne v4, v1, :cond_32

    const-string v1, "audio/alac"

    goto :goto_19

    :cond_32
    const v1, 0x616c6177

    if-ne v4, v1, :cond_33

    const-string v1, "audio/g711-alaw"

    goto :goto_19

    :cond_33
    const v1, 0x756c6177

    if-ne v4, v1, :cond_34

    const-string v1, "audio/g711-mlaw"

    goto :goto_19

    :cond_34
    const v1, 0x4f707573

    if-ne v4, v1, :cond_35

    const-string v1, "audio/opus"

    goto :goto_19

    :cond_35
    const v1, 0x664c6143

    if-ne v4, v1, :cond_36

    const-string v1, "audio/flac"

    goto :goto_19

    :cond_36
    const v1, 0x6d6c7061

    if-ne v4, v1, :cond_37

    const-string v1, "audio/true-hd"

    goto :goto_19

    :cond_37
    const v1, 0x69616d66

    if-ne v4, v1, :cond_38

    const-string v1, "audio/iamf"

    goto :goto_19

    :cond_38
    const/4 v1, 0x0

    goto :goto_19

    :cond_39
    :goto_17
    const-string v1, "audio/mpeg"

    goto :goto_19

    :cond_3a
    :goto_18
    const-string v1, "audio/vnd.dts.hd"

    :goto_19
    move-object v4, v1

    move/from16 v20, v2

    move/from16 v21, v9

    move v1, v15

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v22, 0x0

    const/16 v50, 0x0

    move v15, v10

    move/from16 v10, v46

    :goto_1a
    sub-int v9, v1, v20

    if-ge v9, v3, :cond_9a

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    move/from16 v23, v1

    if-lez v9, :cond_3b

    const/4 v1, 0x1

    goto :goto_1b

    :cond_3b
    const/4 v1, 0x0

    :goto_1b
    invoke-static {v6, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 v24, v3

    const v3, 0x6d686143

    if-ne v1, v3, :cond_3e

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v4, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mhm1.%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1c
    move-object v2, v1

    goto :goto_1d

    :cond_3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mha1.%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    new-array v3, v1, [B

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-nez v7, :cond_3d

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    :goto_1e
    move-object v7, v1

    goto :goto_1f

    :cond_3d
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v3, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    goto :goto_1e

    :goto_1f
    move/from16 v32, v11

    move-object/from16 v28, v13

    move/from16 v51, v15

    move/from16 v15, v23

    move-object/from16 v2, v25

    const/4 v11, 0x0

    const/16 v42, 0x3

    const/16 v44, 0x2

    move-object/from16 v25, v4

    move-object v4, v6

    goto/16 :goto_64

    :cond_3e
    const v3, 0x6d686150

    if-ne v1, v3, :cond_41

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-lez v1, :cond_40

    new-array v3, v1, [B

    move-object/from16 v25, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-nez v7, :cond_3f

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    goto :goto_20

    :cond_3f
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    goto :goto_20

    :cond_40
    move-object/from16 v25, v4

    :goto_20
    move-object v4, v6

    move/from16 v32, v11

    move-object/from16 v28, v13

    move/from16 v51, v15

    move/from16 v15, v23

    :goto_21
    const/4 v11, 0x0

    const/16 v42, 0x3

    const/16 v44, 0x2

    goto/16 :goto_64

    :cond_41
    move-object/from16 v25, v4

    const v4, 0x65736473

    if-eq v1, v4, :cond_8d

    if-eqz p5, :cond_42

    const v4, 0x77617665

    if-ne v1, v4, :cond_42

    move-object/from16 v27, v2

    move-object/from16 v35, v6

    move-object/from16 v31, v7

    move/from16 v38, v9

    move v3, v10

    move/from16 v32, v11

    move-object/from16 v28, v13

    move v2, v15

    move/from16 v39, v23

    const/4 v4, 0x4

    const v6, 0x65736473

    const/16 v10, 0x8

    const/16 v11, 0xc

    const/16 v42, 0x3

    const/16 v44, 0x2

    goto/16 :goto_55

    :cond_42
    const v4, 0x62747274

    if-ne v1, v4, :cond_43

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    move-object/from16 v27, v2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    move-object/from16 v28, v13

    new-instance v13, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v13, v1, v2, v3, v4}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    move-object v4, v6

    move/from16 v32, v11

    move-object/from16 v50, v13

    move/from16 v51, v15

    move/from16 v15, v23

    move-object/from16 v2, v27

    goto :goto_21

    :cond_43
    move-object/from16 v27, v2

    move-object/from16 v28, v13

    const v2, 0x64616333

    if-ne v1, v2, :cond_45

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v2}, Landroidx/media3/extractor/VorbisBitArray;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/VorbisBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    sget-object v3, Landroidx/media3/extractor/AacUtil;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v3, v13

    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    sget-object v13, Landroidx/media3/extractor/AacUtil;->CHANNEL_COUNT_BY_ACMOD:[I

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v29

    aget v4, v13, v29

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v29

    if-eqz v29, :cond_44

    add-int/lit8 v4, v4, 0x1

    :cond_44
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    sget-object v26, Landroidx/media3/extractor/AacUtil;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v13, v26, v13

    mul-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->getBytePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static/range {v49 .. v49}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v4, v2, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v3, v2, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v14, v2, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v5, v2, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v13, v2, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v13, v2, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    move-object/from16 v35, v6

    move-object/from16 v31, v7

    move/from16 v38, v9

    move v3, v10

    move/from16 v32, v11

    :goto_22
    move v2, v15

    move/from16 v39, v23

    const/4 v4, 0x4

    const/16 v10, 0x8

    const/16 v11, 0xc

    :goto_23
    const/16 v42, 0x3

    const/16 v44, 0x2

    goto/16 :goto_54

    :cond_45
    const v2, 0x64656333

    const/16 v4, 0xa

    const/16 v13, 0xd

    if-ne v1, v2, :cond_4a

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v2}, Landroidx/media3/extractor/VorbisBitArray;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/VorbisBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v2, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v26

    sget-object v3, Landroidx/media3/extractor/AacUtil;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v3, v26

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    sget-object v4, Landroidx/media3/extractor/AacUtil;->CHANNEL_COUNT_BY_ACMOD:[I

    move-object/from16 v26, v4

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v29

    aget v26, v26, v29

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v18

    if-eqz v18, :cond_46

    add-int/lit8 v26, v26, 0x1

    :cond_46
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v29

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    move-object/from16 v31, v7

    if-lez v29, :cond_48

    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_47

    add-int/lit8 v26, v26, 0x2

    :cond_47
    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_48
    move/from16 v7, v26

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v4

    move/from16 v32, v11

    const/4 v11, 0x7

    if-le v4, v11, :cond_49

    invoke-virtual {v2, v11}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_49

    const-string v4, "audio/eac3-joc"

    goto :goto_24

    :cond_49
    move-object/from16 v4, v48

    :goto_24
    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->getBytePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v7, v2, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v3, v2, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v14, v2, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v5, v2, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v13, v2, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    move-object/from16 v35, v6

    move/from16 v38, v9

    move v3, v10

    goto/16 :goto_22

    :cond_4a
    move-object/from16 v31, v7

    move/from16 v32, v11

    const v2, 0x64616334

    const/16 v3, 0x9

    if-ne v1, v2, :cond_81

    add-int/lit8 v1, v23, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v7}, Landroidx/media3/extractor/VorbisBitArray;-><init>()V

    invoke-virtual {v7, v0}, Landroidx/media3/extractor/VorbisBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v11

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    const/4 v1, 0x1

    if-gt v13, v1, :cond_80

    const/4 v4, 0x7

    invoke-virtual {v7, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_4b

    const v4, 0xbb80

    :goto_25
    move/from16 v34, v11

    const/4 v11, 0x4

    goto :goto_26

    :cond_4b
    const v4, 0xac44

    goto :goto_25

    :goto_26
    invoke-virtual {v7, v11}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    const/4 v11, 0x1

    if-le v1, v11, :cond_4c

    if-eqz v13, :cond_4d

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_4c

    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    move/from16 v11, v23

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_4e

    const/16 v1, 0x80

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_27

    :cond_4c
    move/from16 v11, v23

    goto :goto_27

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4e
    :goto_27
    const/4 v1, 0x1

    if-ne v13, v1, :cond_50

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v1

    move-object/from16 v35, v6

    const/16 v6, 0x42

    if-lt v1, v6, :cond_4f

    invoke-virtual {v7, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    goto :goto_28

    :cond_4f
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_50
    move-object/from16 v35, v6

    const/16 v6, 0x42

    :goto_28
    new-instance v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    const/4 v6, -0x1

    iput v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iput v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    const/4 v6, 0x2

    iput v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    const/4 v6, 0x0

    iput v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v6, 0x0

    :goto_29
    move-object/from16 v36, v1

    if-ge v6, v3, :cond_75

    if-nez v13, :cond_51

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v29

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v37

    move/from16 v38, v9

    move/from16 v39, v11

    move/from16 v9, v29

    move-object/from16 v1, v36

    move/from16 v11, v37

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_2a
    move/from16 v41, v10

    goto/16 :goto_2e

    :cond_51
    move/from16 v37, v3

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    move/from16 v38, v9

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/16 v1, 0xff

    if-ne v9, v1, :cond_52

    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v39

    move/from16 v23, v9

    move-object/from16 v1, v36

    const/16 v9, 0x42

    add-int v39, v39, v23

    :goto_2b
    const/4 v9, 0x2

    goto :goto_2c

    :cond_52
    move/from16 v23, v9

    move-object/from16 v1, v36

    const/16 v9, 0x42

    move/from16 v39, v23

    goto :goto_2b

    :goto_2c
    if-le v3, v9, :cond_53

    mul-int/lit8 v3, v39, 0x8

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v37

    move/from16 v9, v38

    goto :goto_29

    :cond_53
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v9

    sub-int v9, v34, v9

    const/16 v43, 0x8

    div-int/lit8 v9, v9, 0x8

    move/from16 v36, v3

    move/from16 v29, v9

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/16 v3, 0x1f

    if-ne v9, v3, :cond_54

    const/4 v3, 0x1

    goto :goto_2d

    :cond_54
    const/4 v3, 0x0

    :goto_2d
    move/from16 v37, v3

    move/from16 v3, v39

    move/from16 v39, v11

    move/from16 v11, v36

    move/from16 v36, v29

    const/16 v29, 0x0

    goto :goto_2a

    :goto_2e
    if-nez v29, :cond_55

    if-nez v37, :cond_55

    const/4 v10, 0x6

    if-ne v9, v10, :cond_55

    move/from16 v33, v11

    move/from16 v51, v15

    const/4 v9, 0x1

    goto/16 :goto_42

    :cond_55
    move/from16 v51, v15

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    iput v15, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_56

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_56
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v15, 0x1

    if-ne v13, v15, :cond_57

    if-eq v11, v15, :cond_58

    if-ne v11, v10, :cond_57

    goto :goto_30

    :cond_57
    :goto_2f
    const/4 v10, 0x5

    goto :goto_31

    :cond_58
    :goto_30
    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_2f

    :goto_31
    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v13, v15, :cond_5f

    if-lez v11, :cond_59

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    iput-boolean v10, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    :cond_59
    iget-boolean v10, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v10, :cond_5e

    if-eq v11, v15, :cond_5a

    const/4 v10, 0x2

    if-ne v11, v10, :cond_5b

    :cond_5a
    const/4 v10, 0x5

    goto :goto_33

    :cond_5b
    :goto_32
    const/16 v15, 0x18

    goto :goto_34

    :goto_33
    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    if-ltz v15, :cond_5c

    const/16 v10, 0xf

    if-gt v15, v10, :cond_5c

    iput v15, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    :cond_5c
    const/16 v10, 0xb

    if-lt v15, v10, :cond_5d

    const/16 v10, 0xe

    if-gt v15, v10, :cond_5d

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    iput-boolean v10, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    iput v15, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    goto :goto_32

    :cond_5d
    const/4 v10, 0x2

    goto :goto_32

    :goto_34
    invoke-virtual {v7, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :goto_35
    const/4 v15, 0x1

    goto :goto_36

    :cond_5e
    const/4 v10, 0x2

    goto :goto_35

    :goto_36
    if-eq v11, v15, :cond_60

    if-ne v11, v10, :cond_5f

    goto :goto_37

    :cond_5f
    move/from16 v33, v11

    goto :goto_39

    :cond_60
    :goto_37
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_61

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_61

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_61
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_5f

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    move/from16 v33, v11

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v15, :cond_62

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x8

    goto :goto_38

    :cond_62
    :goto_39
    if-nez v29, :cond_6a

    if-eqz v37, :cond_63

    goto/16 :goto_40

    :cond_63
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    if-eqz v9, :cond_68

    const/4 v15, 0x1

    if-eq v9, v15, :cond_68

    const/4 v10, 0x2

    if-eq v9, v10, :cond_68

    const/4 v10, 0x3

    if-eq v9, v10, :cond_66

    const/4 v11, 0x4

    if-eq v9, v11, :cond_66

    const/4 v10, 0x5

    if-eq v9, v10, :cond_64

    const/4 v11, 0x7

    invoke-virtual {v7, v11}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_3a
    if-ge v10, v9, :cond_6c

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_64
    if-nez v33, :cond_65

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstream(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_41

    :cond_65
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_3b
    const/16 v44, 0x2

    add-int/lit8 v11, v9, 0x2

    if-ge v10, v11, :cond_6c

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstreamGroup(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    :cond_66
    if-nez v33, :cond_67

    const/4 v9, 0x0

    const/4 v10, 0x3

    :goto_3c
    if-ge v9, v10, :cond_6c

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstream(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_67
    const/4 v9, 0x0

    :goto_3d
    const/4 v10, 0x3

    if-ge v9, v10, :cond_6c

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstreamGroup(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_68
    if-nez v33, :cond_69

    const/4 v9, 0x0

    const/4 v10, 0x2

    :goto_3e
    if-ge v9, v10, :cond_6c

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstream(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_69
    const/4 v9, 0x0

    :goto_3f
    const/4 v10, 0x2

    if-ge v9, v10, :cond_6c

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstreamGroup(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    :cond_6a
    :goto_40
    if-nez v33, :cond_6b

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstream(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_41

    :cond_6b
    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->parseDsiSubstreamGroup(Landroidx/media3/extractor/VorbisBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    :cond_6c
    :goto_41
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    :goto_42
    const/4 v11, 0x7

    if-eqz v9, :cond_6d

    invoke-virtual {v7, v11}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_43
    if-ge v10, v9, :cond_6d

    const/16 v15, 0xf

    invoke-virtual {v7, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    :cond_6d
    if-lez v33, :cond_71

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v9

    const/16 v10, 0x42

    if-ge v9, v10, :cond_6e

    const/4 v9, 0x0

    goto :goto_44

    :cond_6e
    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 v9, 0x1

    :goto_44
    if-eqz v9, :cond_6f

    goto :goto_45

    :cond_6f
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_70
    :goto_45
    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    const/4 v9, 0x0

    :goto_46
    if-ge v9, v15, :cond_71

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    goto :goto_46

    :cond_71
    const/16 v10, 0x8

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->byteAlign()V

    const/4 v15, 0x1

    if-ne v13, v15, :cond_73

    invoke-virtual {v7}, Landroidx/media3/extractor/VorbisBitArray;->bitsLeft()I

    move-result v9

    sub-int v9, v34, v9

    div-int/2addr v9, v10

    sub-int v9, v9, v36

    if-lt v3, v9, :cond_72

    sub-int/2addr v3, v9

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    goto :goto_47

    :cond_72
    const-string/jumbo v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_73
    :goto_47
    iget-boolean v3, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v3, :cond_76

    iget v3, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_74

    goto :goto_48

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_75
    move/from16 v38, v9

    move/from16 v41, v10

    move/from16 v39, v11

    move/from16 v51, v15

    move-object/from16 v1, v36

    const/16 v10, 0x8

    const/4 v11, 0x7

    :cond_76
    :goto_48
    iget-boolean v3, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v3, :cond_7c

    iget v3, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v6, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget v1, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    packed-switch v3, :pswitch_data_0

    const/16 v7, 0xb

    const/16 v26, -0x1

    goto :goto_4a

    :pswitch_0
    const/16 v7, 0xb

    const/16 v26, 0x18

    goto :goto_4a

    :pswitch_1
    const/16 v7, 0xb

    const/16 v26, 0xe

    goto :goto_4a

    :pswitch_2
    const/16 v7, 0xb

    const/16 v26, 0xd

    goto :goto_4a

    :pswitch_3
    const/16 v7, 0xb

    const/16 v26, 0xc

    goto :goto_4a

    :pswitch_4
    const/16 v7, 0xb

    const/16 v26, 0xb

    goto :goto_4a

    :pswitch_5
    move/from16 v26, v10

    :goto_49
    const/16 v7, 0xb

    goto :goto_4a

    :pswitch_6
    move/from16 v26, v11

    goto :goto_49

    :pswitch_7
    const/16 v7, 0xb

    const/16 v26, 0x6

    goto :goto_4a

    :pswitch_8
    const/16 v7, 0xb

    const/16 v26, 0x5

    goto :goto_4a

    :pswitch_9
    const/16 v7, 0xb

    const/16 v26, 0x3

    goto :goto_4a

    :pswitch_a
    const/16 v7, 0xb

    const/16 v26, 0x2

    goto :goto_4a

    :pswitch_b
    const/16 v7, 0xb

    const/16 v26, 0x1

    :goto_4a
    const/16 v11, 0xc

    if-eq v3, v7, :cond_78

    if-eq v3, v11, :cond_78

    const/16 v7, 0xd

    if-eq v3, v7, :cond_78

    const/16 v7, 0xe

    if-ne v3, v7, :cond_77

    goto :goto_4b

    :cond_77
    const/4 v15, 0x1

    goto :goto_4c

    :cond_78
    :goto_4b
    if-nez v6, :cond_79

    add-int/lit8 v26, v26, -0x2

    :cond_79
    if-eqz v1, :cond_7b

    const/4 v15, 0x1

    if-eq v1, v15, :cond_7a

    goto :goto_4c

    :cond_7a
    add-int/lit8 v26, v26, -0x2

    goto :goto_4c

    :cond_7b
    const/4 v15, 0x1

    add-int/lit8 v26, v26, -0x4

    :goto_4c
    move/from16 v3, v26

    goto :goto_4d

    :cond_7c
    const/16 v11, 0xc

    const/4 v15, 0x1

    iget v3, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    add-int/2addr v3, v15

    iget v1, v1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_7e

    const/16 v1, 0x11

    if-ne v3, v1, :cond_7d

    move/from16 v26, v40

    goto :goto_4c

    :cond_7d
    move/from16 v26, v3

    goto :goto_4c

    :cond_7e
    :goto_4d
    if-lez v3, :cond_7f

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static/range {v47 .. v47}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v3, v1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v4, v1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v14, v1, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    move/from16 v3, v41

    move/from16 v2, v51

    const/4 v4, 0x4

    goto/16 :goto_23

    :cond_7f
    const-string v0, "Can\'t determine channel count of presentation."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_81
    move-object/from16 v35, v6

    move/from16 v38, v9

    move/from16 v41, v10

    move/from16 v51, v15

    move/from16 v39, v23

    const/16 v10, 0x8

    const/16 v11, 0xc

    const v2, 0x646d6c70

    if-ne v1, v2, :cond_83

    if-lez v12, :cond_82

    move v10, v12

    move-object/from16 v2, v27

    move-object/from16 v7, v31

    move-object/from16 v4, v35

    move/from16 v9, v38

    move/from16 v15, v39

    const/4 v11, 0x0

    const/16 v42, 0x3

    const/16 v44, 0x2

    const/16 v51, 0x2

    goto/16 :goto_64

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_83
    const v2, 0x64647473

    if-eq v1, v2, :cond_84

    const v2, 0x75647473

    if-ne v1, v2, :cond_85

    :cond_84
    const/4 v4, 0x4

    const/16 v42, 0x3

    const/16 v44, 0x2

    goto/16 :goto_53

    :cond_85
    const v2, 0x644f7073

    if-ne v1, v2, :cond_86

    add-int/lit8 v9, v38, -0x8

    sget-object v1, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v2, v1

    add-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v3, v39, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    array-length v1, v1

    invoke-virtual {v0, v1, v9, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v2}, Landroidx/media3/extractor/AacUtil;->buildInitializationData([B)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v2, v27

    move-object/from16 v4, v35

    move/from16 v9, v38

    move/from16 v15, v39

    move/from16 v10, v41

    goto/16 :goto_21

    :cond_86
    const v2, 0x64664c61

    if-ne v1, v2, :cond_87

    add-int/lit8 v9, v38, -0xc

    add-int/lit8 v1, v38, -0x8

    new-array v1, v1, [B

    const/16 v2, 0x66

    const/16 v19, 0x0

    aput-byte v2, v1, v19

    const/16 v2, 0x4c

    const/16 v18, 0x1

    aput-byte v2, v1, v18

    const/16 v2, 0x61

    const/16 v44, 0x2

    aput-byte v2, v1, v44

    const/16 v2, 0x43

    const/16 v42, 0x3

    aput-byte v2, v1, v42

    add-int/lit8 v2, v39, 0xc

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    :goto_4e
    move-object/from16 v2, v27

    move-object/from16 v4, v35

    move/from16 v9, v38

    move/from16 v15, v39

    move/from16 v10, v41

    :goto_4f
    const/4 v11, 0x0

    goto/16 :goto_64

    :cond_87
    const v2, 0x616c6163

    const/4 v4, 0x4

    const/16 v42, 0x3

    const/16 v44, 0x2

    if-ne v1, v2, :cond_88

    add-int/lit8 v9, v38, -0xc

    new-array v1, v9, [B

    add-int/lit8 v6, v39, 0xc

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    sget-object v6, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    move/from16 v51, v3

    move v10, v6

    move-object/from16 v2, v27

    :goto_50
    move-object/from16 v4, v35

    move/from16 v9, v38

    move/from16 v15, v39

    goto :goto_4f

    :cond_88
    const v6, 0x69616362

    if-ne v1, v6, :cond_8c

    add-int/lit8 v1, v39, 0x9

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-wide/from16 v6, v16

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v3, :cond_8b

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v13, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-eq v9, v13, :cond_8a

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-long v2, v9

    const-wide/16 v29, 0x7f

    and-long v29, v2, v29

    mul-int/lit8 v9, v1, 0x7

    shl-long v29, v29, v9

    or-long v6, v6, v29

    const-wide/16 v29, 0x80

    and-long v2, v2, v29

    cmp-long v2, v2, v16

    if-nez v2, :cond_89

    goto :goto_52

    :cond_89
    add-int/lit8 v1, v1, 0x1

    const v2, 0x616c6163

    const/16 v3, 0x9

    goto :goto_51

    :cond_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read a byte over the limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_52
    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    new-array v2, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    goto/16 :goto_4e

    :cond_8c
    move/from16 v3, v41

    move/from16 v2, v51

    goto :goto_54

    :goto_53
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move/from16 v2, v51

    iput v2, v1, Landroidx/media3/common/Format$Builder;->channelCount:I

    move/from16 v3, v41

    iput v3, v1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v14, v1, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v6, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    :goto_54
    move/from16 v51, v2

    move v10, v3

    move-object/from16 v2, v27

    move-object/from16 v7, v31

    goto/16 :goto_50

    :cond_8d
    move-object/from16 v27, v2

    move-object/from16 v35, v6

    move-object/from16 v31, v7

    move/from16 v38, v9

    move v3, v10

    move/from16 v32, v11

    move-object/from16 v28, v13

    move v2, v15

    move/from16 v39, v23

    const/4 v4, 0x4

    const/16 v10, 0x8

    const/16 v11, 0xc

    const/16 v42, 0x3

    const/16 v44, 0x2

    const v6, 0x65736473

    :goto_55
    if-ne v1, v6, :cond_8e

    move-object/from16 v4, v35

    move/from16 v9, v38

    move/from16 v1, v39

    move v15, v1

    :goto_56
    const/4 v6, -0x1

    goto :goto_5c

    :cond_8e
    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move/from16 v15, v39

    if-lt v1, v15, :cond_8f

    const/4 v6, 0x1

    :goto_57
    const/4 v7, 0x0

    goto :goto_58

    :cond_8f
    const/4 v6, 0x0

    goto :goto_57

    :goto_58
    invoke-static {v7, v6}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    :goto_59
    sub-int v6, v1, v15

    move/from16 v9, v38

    if-ge v6, v9, :cond_92

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_90

    const/4 v13, 0x1

    :goto_5a
    move-object/from16 v4, v35

    goto :goto_5b

    :cond_90
    const/4 v13, 0x0

    goto :goto_5a

    :goto_5b
    invoke-static {v4, v13}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    const v7, 0x65736473

    if-ne v13, v7, :cond_91

    goto :goto_56

    :cond_91
    add-int/2addr v1, v6

    move-object/from16 v35, v4

    move/from16 v38, v9

    const/4 v4, 0x4

    const/4 v7, 0x0

    goto :goto_59

    :cond_92
    move-object/from16 v4, v35

    const/4 v1, -0x1

    goto :goto_56

    :goto_5c
    if-eq v1, v6, :cond_99

    invoke-static {v1, v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v1

    iget-object v7, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v13, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v13, [B

    if-eqz v13, :cond_98

    const-string v6, "audio/vorbis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v13}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    :goto_5d
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v18

    if-lez v18, :cond_93

    iget-object v10, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v0, v6, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v10, v0

    const/16 v10, 0xff

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_93

    add-int/lit16 v11, v11, 0xff

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v0, p0

    goto :goto_5d

    :cond_93
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/2addr v0, v11

    const/4 v10, 0x0

    :goto_5e
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    if-lez v11, :cond_95

    iget-object v11, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move-object/from16 v22, v1

    iget v1, v6, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v11, v1

    const/16 v11, 0xff

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_94

    add-int/lit16 v10, v10, 0xff

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v1, v22

    goto :goto_5e

    :cond_94
    :goto_5f
    const/4 v1, 0x1

    goto :goto_60

    :cond_95
    move-object/from16 v22, v1

    goto :goto_5f

    :goto_60
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    add-int/2addr v11, v10

    new-array v10, v0, [B

    iget v6, v6, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move/from16 v18, v11

    const/4 v11, 0x0

    invoke-static {v13, v6, v10, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v0

    add-int v6, v6, v18

    array-length v0, v13

    sub-int/2addr v0, v6

    new-array v1, v0, [B

    invoke-static {v13, v6, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    move v1, v2

    move v10, v3

    move-object/from16 v2, v27

    goto :goto_63

    :cond_96
    move-object/from16 v22, v1

    const/4 v11, 0x0

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    new-instance v0, Landroidx/media3/extractor/VorbisBitArray;

    array-length v1, v13

    invoke-direct {v0, v1, v13}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    invoke-static {v0, v11}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/extractor/VorbisBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v0

    iget v10, v0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iget v1, v0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iget-object v2, v0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    goto :goto_61

    :cond_97
    move v1, v2

    move v10, v3

    move-object/from16 v2, v27

    :goto_61
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    goto :goto_63

    :cond_98
    move-object/from16 v22, v1

    const/4 v11, 0x0

    move v1, v2

    move v10, v3

    :goto_62
    move-object/from16 v2, v27

    move-object/from16 v0, v31

    goto :goto_63

    :cond_99
    const/4 v11, 0x0

    move v1, v2

    move v10, v3

    move-object/from16 v7, v25

    goto :goto_62

    :goto_63
    move/from16 v51, v1

    move-object/from16 v25, v7

    move-object v7, v0

    :goto_64
    add-int v1, v15, v9

    move-object/from16 v0, p0

    move-object v6, v4

    move/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v13, v28

    move/from16 v11, v32

    move/from16 v15, v51

    goto/16 :goto_1a

    :cond_9a
    move-object/from16 v27, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v31, v7

    move v3, v10

    move/from16 v32, v11

    move v2, v15

    const/4 v11, 0x0

    iget-object v0, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    if-nez v0, :cond_9d

    if-eqz v25, :cond_9d

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v1, v27

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iput v2, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v3, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    move/from16 v1, v32

    iput v1, v0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    move-object/from16 v7, v31

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object v14, v0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    if-eqz v22, :cond_9b

    move-object/from16 v1, v22

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v1, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    goto :goto_65

    :cond_9b
    move-object/from16 v1, v50

    if-eqz v1, :cond_9c

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v1, v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    :cond_9c
    :goto_65
    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v8, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    :cond_9d
    :goto_66
    move-object/from16 v0, p0

    move/from16 v2, v20

    goto :goto_68

    :cond_9e
    move/from16 v45, v11

    move v11, v12

    move-object/from16 v0, p0

    move/from16 v6, p2

    move-object/from16 v7, p4

    move v1, v4

    goto/16 :goto_2

    :goto_67
    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/common/util/TimedValueQueue;I)V

    move/from16 v24, v3

    move/from16 v21, v9

    :goto_68
    add-int v2, v2, v24

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v9, v21, 0x1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move v12, v11

    move/from16 v11, v45

    const/16 v10, 0xc

    goto/16 :goto_0

    :cond_9f
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;
    .locals 62

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_63

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v7, v6, Landroidx/media3/decoder/Buffer;->flags:I

    const v8, 0x7472616b

    if-eq v7, v8, :cond_0

    move-object/from16 v51, v2

    move-object v0, v3

    move/from16 v21, v5

    const/16 v34, 0x0

    goto/16 :goto_4e

    :cond_0
    const v7, 0x6d766864

    invoke-virtual {v0, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x6d646961

    invoke-virtual {v6, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x68646c72    # 4.3148E24f

    invoke-virtual {v9, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    const v12, 0x736f756e

    const/4 v14, -0x1

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const v12, 0x76696465

    if-ne v10, v12, :cond_2

    const/4 v10, 0x2

    goto :goto_2

    :cond_2
    const v12, 0x74657874

    if-eq v10, v12, :cond_5

    const v12, 0x7362746c

    if-eq v10, v12, :cond_5

    const v12, 0x73756274

    if-eq v10, v12, :cond_5

    const v12, 0x636c6370

    if-ne v10, v12, :cond_3

    goto :goto_1

    :cond_3
    const v12, 0x6d657461

    if-ne v10, v12, :cond_4

    const/4 v10, 0x5

    goto :goto_2

    :cond_4
    move v10, v14

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v10, 0x3

    :goto_2
    const/16 v34, 0x0

    const/4 v8, 0x4

    const-wide/16 v36, 0x0

    if-ne v10, v14, :cond_6

    move-object/from16 v51, v2

    const/4 v0, 0x0

    move-object/from16 v2, p7

    goto/16 :goto_1e

    :cond_6
    const/16 v38, 0x2

    const v15, 0x746b6864

    invoke-virtual {v6, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v39, 0x1

    const/16 v11, 0x8

    invoke-virtual {v15, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v17

    if-nez v17, :cond_7

    move v13, v11

    goto :goto_3

    :cond_7
    const/16 v13, 0x10

    :goto_3
    invoke-virtual {v15, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v20

    invoke-virtual {v15, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v13, v15, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-nez v17, :cond_8

    move v11, v8

    :cond_8
    move/from16 v12, v34

    :goto_4
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v12, v11, :cond_b

    iget-object v4, v15, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int v19, v13, v12

    aget-byte v4, v4, v19

    if-eq v4, v14, :cond_a

    if-nez v17, :cond_9

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v11

    :goto_5
    cmp-long v4, v11, v36

    if-nez v4, :cond_c

    :goto_6
    move-wide/from16 v11, v21

    goto :goto_7

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v15, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_c
    :goto_7
    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v15, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    invoke-virtual {v15, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const/high16 v0, 0x10000

    if-nez v13, :cond_d

    if-ne v14, v0, :cond_d

    const/high16 v0, -0x10000

    if-ne v8, v0, :cond_e

    if-nez v15, :cond_e

    const/16 v0, 0x5a

    :goto_8
    move-wide/from16 v13, v21

    move/from16 v21, v0

    goto :goto_9

    :cond_d
    const/high16 v0, -0x10000

    :cond_e
    if-nez v13, :cond_10

    if-ne v14, v0, :cond_10

    const/high16 v0, 0x10000

    if-ne v8, v0, :cond_f

    if-nez v15, :cond_f

    const/16 v0, 0x10e

    goto :goto_8

    :cond_f
    const/high16 v0, -0x10000

    :cond_10
    if-ne v13, v0, :cond_11

    if-nez v14, :cond_11

    if-nez v8, :cond_11

    if-ne v15, v0, :cond_11

    const/16 v0, 0xb4

    goto :goto_8

    :cond_11
    move-wide/from16 v13, v21

    move/from16 v21, v34

    :goto_9
    cmp-long v0, p2, v13

    if-nez v0, :cond_12

    move-wide/from16 v26, v11

    goto :goto_a

    :cond_12
    move-wide/from16 v26, p2

    :goto_a
    iget-object v0, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v0

    iget-wide v7, v0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    cmp-long v0, v26, v13

    if-nez v0, :cond_13

    move-wide/from16 v30, v7

    move-wide v7, v13

    :goto_b
    const v0, 0x6d696e66

    goto :goto_c

    :cond_13
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v32, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v7

    invoke-static/range {v26 .. v32}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    goto :goto_b

    :goto_c
    invoke-virtual {v9, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7374626c

    invoke-virtual {v11, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x6d646864

    invoke-virtual {v9, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v9

    if-nez v9, :cond_14

    const/16 v12, 0x8

    goto :goto_d

    :cond_14
    const/16 v12, 0x10

    :goto_d
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v48

    iget v12, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-nez v9, :cond_15

    const/4 v15, 0x4

    goto :goto_e

    :cond_15
    const/16 v15, 0x8

    :goto_e
    move/from16 v13, v34

    :goto_f
    if-ge v13, v15, :cond_19

    iget-object v14, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int v19, v12, v13

    aget-byte v14, v14, v19

    move-object/from16 v51, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_18

    if-nez v9, :cond_16

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    :goto_10
    move-wide/from16 v44, v12

    goto :goto_11

    :cond_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    goto :goto_10

    :goto_11
    cmp-long v2, v44, v36

    if-nez v2, :cond_17

    :goto_12
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_13

    :cond_17
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v50, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v46, 0xf4240

    invoke-static/range {v44 .. v50}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    move-wide/from16 v26, v12

    goto :goto_13

    :cond_18
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v51

    goto :goto_f

    :cond_19
    move-object/from16 v51, v2

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_12

    :goto_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    shr-int/lit8 v9, v0, 0x5

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    const/4 v12, 0x3

    new-array v13, v12, [C

    aput-char v2, v13, v34

    aput-char v9, v13, v39

    aput-char v0, v13, v38

    move/from16 v0, v34

    :goto_14
    if-ge v0, v12, :cond_1c

    aget-char v2, v13, v0

    const/16 v9, 0x61

    if-lt v2, v9, :cond_1b

    const/16 v9, 0x7a

    if-le v2, v9, :cond_1a

    goto :goto_15

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1b
    :goto_15
    const/16 v22, 0x0

    goto :goto_16

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v22, v0

    :goto_16
    const v0, 0x73747364

    invoke-virtual {v11, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v23, p4

    move/from16 v24, p6

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v24}, Landroidx/media3/extractor/mp4/BoxParser;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/common/util/TimedValueQueue;

    move-result-object v0

    move/from16 v18, v20

    if-nez p5, :cond_22

    const v2, 0x65647473

    invoke-virtual {v6, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    if-eqz v2, :cond_22

    const v9, 0x656c7374

    invoke-virtual {v2, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    if-nez v2, :cond_1d

    move-wide/from16 v24, v7

    const/4 v2, 0x0

    goto :goto_1a

    :cond_1d
    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v9

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    new-array v12, v11, [J

    new-array v13, v11, [J

    move/from16 v14, v34

    :goto_17
    if-ge v14, v11, :cond_21

    move/from16 v15, v39

    if-ne v9, v15, :cond_1e

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v16

    goto :goto_18

    :cond_1e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    :goto_18
    aput-wide v16, v12, v14

    if-ne v9, v15, :cond_1f

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v16

    move-wide/from16 v24, v7

    goto :goto_19

    :cond_1f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    move-wide/from16 v24, v7

    int-to-long v7, v15

    move-wide/from16 v16, v7

    :goto_19
    aput-wide v16, v13, v14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_20

    move/from16 v7, v38

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v7, v24

    const/16 v38, 0x2

    const/16 v39, 0x1

    goto :goto_17

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-wide/from16 v24, v7

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_1a
    if-eqz v2, :cond_23

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [J

    move-object/from16 v33, v2

    move-object/from16 v32, v7

    goto :goto_1b

    :cond_22
    move-wide/from16 v24, v7

    :cond_23
    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_1b
    iget-object v2, v0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    if-nez v2, :cond_24

    move-object/from16 v2, p7

    const/4 v0, 0x0

    goto :goto_1e

    :cond_24
    if-eqz v4, :cond_26

    new-instance v7, Landroidx/media3/container/Mp4AlternateGroupData;

    invoke-direct {v7, v4}, Landroidx/media3/container/Mp4AlternateGroupData;-><init>(I)V

    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v4, v0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v4, :cond_25

    filled-new-array {v7}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v4

    goto :goto_1c

    :cond_25
    new-instance v4, Landroidx/media3/common/Metadata;

    filled-new-array {v7}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    invoke-direct {v4, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_1c
    iput-object v4, v2, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v28, v4

    goto :goto_1d

    :cond_26
    move-object/from16 v28, v2

    :goto_1d
    new-instance v17, Landroidx/media3/extractor/mp4/Track;

    iget v2, v0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    iget-object v4, v0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v4, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v0, v0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    move/from16 v29, v2

    move/from16 v19, v10

    move-wide/from16 v22, v30

    move-wide/from16 v20, v48

    move/from16 v31, v0

    move-object/from16 v30, v4

    invoke-direct/range {v17 .. v33}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v2, p7

    move-object/from16 v0, v17

    :goto_1e
    invoke-interface {v2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media3/extractor/mp4/Track;

    if-nez v8, :cond_27

    move-object v0, v3

    move/from16 v21, v5

    goto/16 :goto_4e

    :cond_27
    iget-object v0, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    const v4, 0x6d646961

    invoke-virtual {v6, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x6d696e66

    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374737a

    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    if-eqz v6, :cond_28

    new-instance v7, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v7, v6, v0}, Landroidx/compose/runtime/OffsetApplier;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    goto :goto_1f

    :cond_28
    const v6, 0x73747a32

    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    if-eqz v6, :cond_61

    new-instance v7, Landroidx/media3/extractor/wav/WavFormat;

    invoke-direct {v7, v6}, Landroidx/media3/extractor/wav/WavFormat;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    :goto_1f
    invoke-interface {v7}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getSampleCount()I

    move-result v6

    if-nez v6, :cond_29

    new-instance v7, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move/from16 v0, v34

    new-array v9, v0, [J

    new-array v10, v0, [I

    new-array v12, v0, [J

    new-array v13, v0, [I

    const-wide/16 v14, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v15}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    move-object v0, v3

    move/from16 v21, v5

    :goto_20
    const/16 v34, 0x0

    goto/16 :goto_4d

    :cond_29
    iget v9, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2a

    iget-wide v9, v8, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v11, v9, v36

    if-lez v11, :cond_2a

    int-to-float v11, v6

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v11, v9

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iput v11, v0, Landroidx/media3/common/Format$Builder;->frameRate:F

    new-instance v9, Landroidx/media3/common/Format;

    invoke-direct {v9, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v8, v9}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v8

    :cond_2a
    iget-object v0, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    const v9, 0x7374636f

    invoke-virtual {v4, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-nez v9, :cond_2b

    const v9, 0x636f3634

    invoke-virtual {v4, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    goto :goto_21

    :cond_2b
    const/4 v10, 0x0

    :goto_21
    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v11, 0x73747363

    invoke-virtual {v4, v11}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v12, 0x73747473

    invoke-virtual {v4, v12}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v13, 0x73747373

    invoke-virtual {v4, v13}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v13

    if-eqz v13, :cond_2c

    iget-object v13, v13, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_22

    :cond_2c
    const/4 v13, 0x0

    :goto_22
    const v14, 0x63747473

    invoke-virtual {v4, v14}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_23

    :cond_2d
    const/4 v4, 0x0

    :goto_23
    new-instance v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v14, v11, v9, v10}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    const/16 v9, 0xc

    invoke-virtual {v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    const/16 v39, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    if-eqz v4, :cond_2e

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    goto :goto_24

    :cond_2e
    const/16 v16, 0x0

    :goto_24
    if-eqz v13, :cond_30

    invoke-virtual {v13, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    if-lez v9, :cond_2f

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    const/16 v39, 0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_26

    :cond_2f
    const/4 v13, 0x0

    :goto_25
    const/16 v17, -0x1

    goto :goto_26

    :cond_30
    const/4 v9, 0x0

    goto :goto_25

    :goto_26
    invoke-interface {v7}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getFixedSampleSize()I

    move-result v2

    move-object/from16 v18, v4

    iget-object v4, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_31

    const-string v0, "audio/raw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_27

    :cond_31
    move/from16 v21, v5

    goto/16 :goto_2d

    :cond_32
    :goto_27
    if-nez v10, :cond_31

    if-nez v16, :cond_31

    if-nez v9, :cond_31

    iget v0, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v4, v0, [J

    new-array v7, v0, [I

    :goto_28
    invoke-virtual {v14}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v9

    if-eqz v9, :cond_33

    iget v9, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget-wide v10, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    aput-wide v10, v4, v9

    iget v10, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    aput v10, v7, v9

    goto :goto_28

    :cond_33
    int-to-long v9, v15

    const/16 v11, 0x2000

    div-int/2addr v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_29
    if-ge v12, v0, :cond_34

    aget v14, v7, v12

    invoke-static {v14, v11}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    :cond_34
    new-array v12, v13, [J

    new-array v14, v13, [I

    new-array v15, v13, [J

    new-array v13, v13, [I

    move/from16 v20, v2

    move-object/from16 v16, v4

    move/from16 v21, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2a
    if-ge v2, v0, :cond_36

    aget v22, v7, v2

    aget-wide v23, v16, v2

    move/from16 v61, v18

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v17, v61

    move/from16 v61, v22

    move/from16 v22, v2

    move/from16 v2, v61

    :goto_2b
    if-lez v2, :cond_35

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    aput-wide v23, v12, v17

    move/from16 v26, v2

    mul-int v2, v20, v25

    aput v2, v14, v17

    add-int/2addr v5, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-wide/from16 v27, v9

    int-to-long v9, v4

    mul-long v9, v9, v27

    aput-wide v9, v15, v17

    const/16 v39, 0x1

    aput v39, v13, v17

    aget v2, v14, v17

    int-to-long v9, v2

    add-long v23, v23, v9

    add-int v4, v4, v25

    sub-int v2, v26, v25

    add-int/lit8 v17, v17, 0x1

    move-wide/from16 v9, v27

    goto :goto_2b

    :cond_35
    move-wide/from16 v27, v9

    add-int/lit8 v2, v22, 0x1

    move/from16 v9, v17

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v18, v9

    move-wide/from16 v9, v27

    goto :goto_2a

    :cond_36
    move-wide/from16 v27, v9

    int-to-long v9, v4

    mul-long v9, v9, v27

    int-to-long v4, v5

    move-object/from16 v26, v3

    move-object/from16 v58, v13

    move-object v0, v15

    move/from16 v56, v17

    :goto_2c
    move-object/from16 v54, v12

    move-object/from16 v55, v14

    goto/16 :goto_39

    :goto_2d
    new-array v0, v6, [J

    new-array v2, v6, [I

    new-array v4, v6, [J

    new-array v5, v6, [I

    move/from16 v1, v16

    move-object/from16 v16, v7

    move v7, v11

    move v11, v9

    move v9, v15

    move v15, v10

    move/from16 v10, v17

    move/from16 v17, v1

    move-object/from16 v26, v3

    move-object/from16 v20, v12

    move-object/from16 v24, v13

    move-wide/from16 v22, v36

    move-wide/from16 v27, v22

    move-wide/from16 v29, v27

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    :goto_2e
    const-string v3, "BoxParsers"

    if-ge v12, v6, :cond_3f

    const/16 v32, 0x1

    :goto_2f
    if-nez v25, :cond_37

    invoke-virtual {v14}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v32

    if-eqz v32, :cond_37

    move/from16 v33, v6

    move/from16 v35, v7

    iget-wide v6, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    move-wide/from16 v29, v6

    iget v6, v14, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    move/from16 v25, v6

    move/from16 v6, v33

    move/from16 v7, v35

    goto :goto_2f

    :cond_37
    move/from16 v33, v6

    move/from16 v35, v7

    if-nez v32, :cond_38

    const-string v6, "Unexpected end of chunk data"

    invoke-static {v3, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v6, v12

    move-object v12, v0

    :goto_30
    move-object v14, v2

    move/from16 v0, v25

    goto/16 :goto_33

    :cond_38
    if-eqz v18, :cond_3a

    move/from16 v3, v31

    :goto_31
    if-nez v3, :cond_39

    if-lez v17, :cond_39

    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v17, v17, -0x1

    goto :goto_31

    :cond_39
    add-int/lit8 v3, v3, -0x1

    move/from16 v31, v3

    :cond_3a
    aput-wide v29, v0, v12

    invoke-interface/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->readNextSampleSize()I

    move-result v3

    aput v3, v2, v12

    int-to-long v6, v3

    add-long v22, v22, v6

    if-le v3, v1, :cond_3b

    move v1, v3

    :cond_3b
    int-to-long v6, v13

    add-long v6, v27, v6

    aput-wide v6, v4, v12

    if-nez v24, :cond_3c

    const/4 v3, 0x1

    goto :goto_32

    :cond_3c
    const/4 v3, 0x0

    :goto_32
    aput v3, v5, v12

    if-ne v12, v10, :cond_3d

    const/16 v39, 0x1

    aput v39, v5, v12

    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_3d

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v10, v3

    :cond_3d
    int-to-long v6, v9

    add-long v27, v27, v6

    add-int/lit8 v7, v35, -0x1

    if-nez v7, :cond_3e

    if-lez v15, :cond_3e

    invoke-virtual/range {v20 .. v20}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    add-int/lit8 v15, v15, -0x1

    move v7, v3

    move v9, v6

    :cond_3e
    aget v3, v2, v12

    move-object v6, v0

    move/from16 v32, v1

    int-to-long v0, v3

    add-long v29, v29, v0

    add-int/lit8 v25, v25, -0x1

    add-int/lit8 v12, v12, 0x1

    move-object v0, v6

    move/from16 v1, v32

    move/from16 v6, v33

    goto/16 :goto_2e

    :cond_3f
    move/from16 v33, v6

    move/from16 v35, v7

    move-object v6, v0

    move-object v12, v6

    move/from16 v6, v33

    goto :goto_30

    :goto_33
    int-to-long v9, v13

    add-long v9, v27, v9

    if-eqz v18, :cond_41

    :goto_34
    if-lez v17, :cond_41

    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    goto :goto_35

    :cond_40
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    add-int/lit8 v17, v17, -0x1

    goto :goto_34

    :cond_41
    const/4 v2, 0x1

    :goto_35
    if-nez v11, :cond_43

    if-nez v35, :cond_43

    if-nez v0, :cond_43

    if-nez v15, :cond_43

    if-nez v31, :cond_43

    if-nez v2, :cond_42

    goto :goto_36

    :cond_42
    move/from16 v16, v1

    goto :goto_38

    :cond_43
    :goto_36
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Inconsistent stbl box for track "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v8, Landroidx/media3/extractor/mp4/Track;->id:I

    move/from16 v16, v1

    const-string v1, ": remainingSynchronizationSamples "

    move/from16 v17, v2

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-static {v7, v13, v1, v11, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", remainingSamplesInChunk "

    const-string v2, ", remainingTimestampDeltaChanges "

    move/from16 v11, v35

    invoke-static {v7, v11, v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v17, :cond_44

    const-string v0, ", ctts invalid"

    goto :goto_37

    :cond_44
    const-string v0, ""

    :goto_37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    move-object v0, v4

    move-object/from16 v58, v5

    move/from16 v56, v16

    move-wide/from16 v4, v22

    goto/16 :goto_2c

    :goto_39
    iget-wide v1, v8, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v3, v1, v36

    const-wide/32 v22, 0x7fffffff

    if-lez v3, :cond_45

    const-wide/16 v11, 0x8

    mul-long/2addr v11, v4

    const-wide/32 v13, 0xf4240

    sget-object v17, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide v15, v1

    invoke-static/range {v11 .. v17}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    cmp-long v3, v1, v36

    if-lez v3, :cond_45

    cmp-long v3, v1, v22

    if-gez v3, :cond_45

    invoke-virtual/range {v19 .. v19}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    long-to-int v1, v1

    iput v1, v3, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v8

    :cond_45
    iget-wide v13, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-object v1, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v2, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    iget-object v3, v8, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    iget-object v4, v8, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    move-object/from16 v15, v33

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v59

    if-nez v4, :cond_46

    invoke-static {v0, v13, v14}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    new-instance v52, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v57, v0

    move-object/from16 v53, v8

    invoke-direct/range {v52 .. v60}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    :goto_3a
    move-object/from16 v0, v26

    move-object/from16 v7, v52

    goto/16 :goto_20

    :cond_46
    move-object v15, v0

    array-length v0, v4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4b

    if-ne v2, v5, :cond_4b

    array-length v0, v15

    const/4 v7, 0x2

    if-lt v0, v7, :cond_4b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-wide v11, v3, v0

    aget-wide v27, v4, v0

    move/from16 v39, v5

    move v7, v6

    iget-wide v5, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v16, v1

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v31, v0

    move-wide/from16 v29, v5

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    add-long/2addr v0, v11

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v17, v0

    const/4 v0, 0x0

    const/4 v6, 0x4

    invoke-static {v6, v0, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    move/from16 v43, v6

    array-length v6, v15

    add-int/lit8 v6, v6, -0x4

    invoke-static {v6, v0, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v5

    aget-wide v19, v15, v0

    cmp-long v0, v19, v11

    if-gtz v0, :cond_47

    aget-wide v0, v15, v1

    cmp-long v0, v11, v0

    if-gez v0, :cond_47

    aget-wide v0, v15, v5

    cmp-long v0, v0, v17

    if-gez v0, :cond_47

    cmp-long v0, v17, v9

    if-gtz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_3b

    :cond_47
    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_4a

    sub-long v0, v9, v17

    sub-long v27, v11, v19

    move-object/from16 v5, v16

    iget v6, v5, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v11, v6

    move-wide/from16 v16, v0

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v31, v0

    move-wide/from16 v29, v11

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    iget v6, v5, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v11, v6

    move-object/from16 v18, v5

    iget-wide v5, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v31, v5

    move-wide/from16 v29, v11

    move-wide/from16 v27, v16

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    cmp-long v11, v0, v36

    if-nez v11, :cond_49

    cmp-long v11, v5, v36

    if-eqz v11, :cond_48

    goto :goto_3d

    :cond_48
    :goto_3c
    move-object/from16 v1, p1

    goto :goto_3e

    :cond_49
    :goto_3d
    cmp-long v11, v0, v22

    if-gtz v11, :cond_48

    cmp-long v11, v5, v22

    if-gtz v11, :cond_48

    long-to-int v0, v0

    move-object/from16 v1, p1

    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v5

    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    invoke-static {v15, v13, v14}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    const/16 v34, 0x0

    aget-wide v27, v4, v34

    const-wide/32 v29, 0xf4240

    iget-wide v2, v8, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v31, v2

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v59

    new-instance v52, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v53, v8

    move-object/from16 v57, v15

    invoke-direct/range {v52 .. v60}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_3a

    :cond_4a
    move-object/from16 v1, p1

    move-object/from16 v18, v16

    goto :goto_3e

    :cond_4b
    move-object/from16 v18, v1

    move v7, v6

    goto :goto_3c

    :goto_3e
    array-length v0, v4

    const/4 v5, 0x1

    const/16 v34, 0x0

    if-ne v0, v5, :cond_4e

    aget-wide v5, v4, v34

    cmp-long v0, v5, v36

    if-nez v0, :cond_4d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v2, v3, v34

    move/from16 v0, v34

    :goto_3f
    array-length v4, v15

    if-ge v0, v4, :cond_4c

    aget-wide v4, v15, v0

    sub-long v27, v4, v2

    iget-wide v4, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v29, 0xf4240

    move-wide/from16 v31, v4

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4c
    sub-long v27, v9, v2

    iget-wide v2, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v29, 0xf4240

    move-wide/from16 v31, v2

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v59

    new-instance v52, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v53, v8

    move-object/from16 v57, v15

    invoke-direct/range {v52 .. v60}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v0, v26

    move-object/from16 v7, v52

    goto/16 :goto_4d

    :cond_4d
    const/4 v5, 0x1

    :cond_4e
    move-object/from16 v12, v54

    move-object/from16 v14, v55

    move-object/from16 v13, v58

    if-ne v2, v5, :cond_4f

    const/4 v0, 0x1

    goto :goto_40

    :cond_4f
    move/from16 v0, v34

    :goto_40
    array-length v5, v4

    new-array v5, v5, [I

    array-length v6, v4

    new-array v6, v6, [I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v3

    move/from16 v1, v34

    move v9, v1

    move v10, v9

    move v11, v10

    :goto_41
    array-length v3, v4

    if-ge v9, v3, :cond_55

    move-object v3, v5

    move-object/from16 v17, v6

    aget-wide v5, v16, v9

    const-wide/16 v19, -0x1

    cmp-long v19, v5, v19

    if-eqz v19, :cond_54

    aget-wide v27, v4, v9

    move/from16 v19, v9

    move/from16 v20, v10

    iget-wide v9, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v29, v9

    iget-wide v9, v8, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v31, v9

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    move-object/from16 v22, v3

    const/4 v3, 0x1

    invoke-static {v15, v5, v6, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v23

    aput v23, v22, v19

    add-long/2addr v5, v9

    invoke-static {v15, v5, v6, v0}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZ)I

    move-result v9

    aput v9, v17, v19

    aget v9, v22, v19

    :goto_42
    aget v10, v22, v19

    if-ltz v10, :cond_50

    aget v23, v13, v10

    and-int/lit8 v23, v23, 0x1

    if-nez v23, :cond_50

    add-int/lit8 v10, v10, -0x1

    aput v10, v22, v19

    const/4 v3, 0x1

    goto :goto_42

    :cond_50
    if-gez v10, :cond_51

    aput v9, v22, v19

    :goto_43
    aget v3, v22, v19

    aget v9, v17, v19

    if-ge v3, v9, :cond_51

    aget v9, v13, v3

    const/16 v39, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_51

    add-int/lit8 v3, v3, 0x1

    aput v3, v22, v19

    goto :goto_43

    :cond_51
    const/4 v10, 0x2

    if-ne v2, v10, :cond_52

    aget v3, v22, v19

    aget v9, v17, v19

    if-eq v3, v9, :cond_52

    :goto_44
    aget v3, v17, v19

    array-length v9, v15

    const/16 v39, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_52

    add-int/lit8 v3, v3, 0x1

    aget-wide v23, v15, v3

    cmp-long v9, v23, v5

    if-gtz v9, :cond_52

    aput v3, v17, v19

    goto :goto_44

    :cond_52
    aget v3, v17, v19

    aget v5, v22, v19

    sub-int v6, v3, v5

    add-int/2addr v6, v11

    if-eq v1, v5, :cond_53

    const/4 v1, 0x1

    goto :goto_45

    :cond_53
    move/from16 v1, v34

    :goto_45
    or-int v1, v20, v1

    move/from16 v20, v1

    move v1, v3

    move v11, v6

    goto :goto_46

    :cond_54
    move-object/from16 v22, v3

    move/from16 v19, v9

    move/from16 v20, v10

    const/4 v10, 0x2

    :goto_46
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v6, v17

    move/from16 v10, v20

    move-object/from16 v5, v22

    goto/16 :goto_41

    :cond_55
    move-object/from16 v22, v5

    move-object/from16 v17, v6

    move/from16 v20, v10

    if-eq v11, v7, :cond_56

    const/4 v0, 0x1

    goto :goto_47

    :cond_56
    move/from16 v0, v34

    :goto_47
    or-int v0, v20, v0

    if-eqz v0, :cond_57

    new-array v1, v11, [J

    goto :goto_48

    :cond_57
    move-object v1, v12

    :goto_48
    if-eqz v0, :cond_58

    new-array v2, v11, [I

    goto :goto_49

    :cond_58
    move-object v2, v14

    :goto_49
    if-eqz v0, :cond_59

    move/from16 v56, v34

    :cond_59
    if-eqz v0, :cond_5a

    new-array v3, v11, [I

    goto :goto_4a

    :cond_5a
    move-object v3, v13

    :goto_4a
    new-array v5, v11, [J

    move/from16 v6, v34

    move v7, v6

    move v9, v7

    move-wide/from16 v27, v36

    move/from16 v44, v56

    :goto_4b
    array-length v10, v4

    if-ge v6, v10, :cond_5f

    aget-wide v10, v16, v6

    move/from16 v19, v0

    aget v0, v22, v6

    move-object/from16 v20, v4

    aget v4, v17, v6

    move-object/from16 v45, v5

    if-eqz v19, :cond_5b

    sub-int v5, v4, v0

    invoke-static {v12, v0, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v14, v0, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v0, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5b
    move/from16 v5, v44

    :goto_4c
    if-ge v0, v4, :cond_5e

    move/from16 v23, v0

    move-object/from16 v42, v1

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    sget-object v58, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v29, 0xf4240

    move-wide/from16 v31, v0

    move-object/from16 v33, v58

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    aget-wide v24, v15, v23

    sub-long v52, v24, v10

    const-wide/32 v54, 0xf4240

    move-wide/from16 v24, v0

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v56, v0

    invoke-static/range {v52 .. v58}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    cmp-long v29, v0, v36

    if-gez v29, :cond_5c

    const/4 v7, 0x1

    :cond_5c
    add-long v0, v24, v0

    aput-wide v0, v45, v9

    if-eqz v19, :cond_5d

    aget v0, v2, v9

    if-le v0, v5, :cond_5d

    aget v5, v14, v23

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v23, 0x1

    move-object/from16 v1, v42

    goto :goto_4c

    :cond_5e
    move-object/from16 v42, v1

    aget-wide v0, v20, v6

    add-long v27, v27, v0

    add-int/lit8 v6, v6, 0x1

    move/from16 v44, v5

    move/from16 v0, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v42

    move-object/from16 v5, v45

    goto :goto_4b

    :cond_5f
    move-object/from16 v42, v1

    move-object/from16 v45, v5

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v29, 0xf4240

    move-wide/from16 v31, v0

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    if-eqz v7, :cond_60

    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v8

    :cond_60
    move-object/from16 v41, v8

    new-instance v40, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v43, v2

    move-object/from16 v46, v3

    invoke-direct/range {v40 .. v48}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v0, v26

    move-object/from16 v7, v40

    :goto_4d
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4e
    add-int/lit8 v5, v21, 0x1

    move-object v3, v0

    move-object/from16 v2, v51

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_61
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_62
    const/4 v1, 0x0

    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_63
    move-object v0, v3

    return-object v0
.end method

.method public static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/common/util/TimedValueQueue;I)V
    .locals 52

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_0
    iget-object v11, v4, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v11, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v11, p9

    :cond_1
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const v8, 0x6d317620

    const-string/jumbo v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string/jumbo v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x8

    const/16 v32, 0x8

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_5

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v12, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    if-nez v13, :cond_6

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v9, v1

    if-ne v9, v2, :cond_6

    :cond_5
    move-object/from16 v40, v3

    move-object/from16 v38, v15

    move/from16 v45, v18

    move/from16 v7, v28

    move/from16 v27, v29

    move/from16 v12, v30

    move/from16 v25, v31

    move/from16 v26, v32

    move-object/from16 v31, v8

    goto/16 :goto_49

    :cond_6
    if-lez v13, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v1, v9}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v2, 0x61766343

    if-ne v9, v2, :cond_a

    if-nez v8, :cond_8

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v2, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    iget-object v15, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/ArrayList;

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v4, Landroidx/media3/common/util/TimedValueQueue;->first:I

    if-nez v22, :cond_9

    iget v14, v1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    :cond_9
    iget-object v2, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    iget v8, v1, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    iget v9, v1, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    iget v12, v1, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    move-object/from16 v16, v2

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    move/from16 v19, v2

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    const-string/jumbo v24, "video/avc"

    move/from16 v26, v1

    move/from16 v25, v2

    move-object/from16 v40, v3

    move/from16 v28, v7

    move v7, v9

    move/from16 v32, v10

    move-object/from16 v29, v11

    move/from16 v27, v12

    move/from16 v30, v19

    move-object/from16 v31, v24

    const/16 v3, 0x8

    move/from16 v19, v8

    :goto_6
    const/4 v8, -0x1

    goto/16 :goto_48

    :cond_a
    const v2, 0x68766343

    move/from16 v25, v7

    const-string/jumbo v7, "video/hevc"

    if-ne v9, v2, :cond_e

    if-nez v8, :cond_b

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v2, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/work/WorkQuery;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v8

    iget-object v15, v8, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v4, Landroidx/media3/common/util/TimedValueQueue;->first:I

    if-nez v22, :cond_c

    iget v14, v8, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    :cond_c
    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    iget v2, v8, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    iget-object v9, v8, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    iget v12, v8, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    move/from16 v16, v1

    const/4 v1, -0x1

    if-eq v12, v1, :cond_d

    move/from16 v18, v12

    :cond_d
    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    iget v12, v8, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v19, v1

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    move/from16 v20, v1

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    move/from16 v24, v1

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    iget-object v8, v8, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/work/WorkQuery;

    move/from16 v26, v1

    move-object/from16 v40, v3

    move-object/from16 v31, v7

    move-object/from16 v35, v8

    move/from16 v32, v10

    move-object/from16 v29, v11

    move/from16 v27, v12

    move/from16 v7, v19

    move/from16 v30, v20

    move/from16 v28, v25

    const/16 v3, 0x8

    const/4 v8, -0x1

    move/from16 v20, v2

    move/from16 v19, v16

    move/from16 v25, v24

    move-object/from16 v16, v9

    goto/16 :goto_48

    :cond_e
    const v2, 0x6c687643

    move-object/from16 v26, v11

    const/4 v11, 0x2

    if-ne v9, v2, :cond_1a

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    invoke-static {v2, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    move-object/from16 v2, v35

    if-eqz v2, :cond_f

    iget-object v1, v2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v11, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    const-string v7, "must have at least two layers"

    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/work/WorkQuery;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v7

    iget v1, v4, Landroidx/media3/common/util/TimedValueQueue;->first:I

    iget v8, v7, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    if-ne v1, v8, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v8, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    iget v1, v7, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    const/4 v8, -0x1

    move/from16 v9, v28

    if-eq v1, v8, :cond_12

    if-ne v9, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    const-string v11, "colorSpace must be the same for both views"

    invoke-static {v11, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    :cond_12
    iget v1, v7, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v11, v29

    if-eq v1, v8, :cond_14

    if-ne v11, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    const-string v12, "colorRange must be the same for both views"

    invoke-static {v12, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    :cond_14
    iget v1, v7, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    if-eq v1, v8, :cond_16

    move/from16 v8, v30

    if-ne v8, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    const-string v12, "colorTransfer must be the same for both views"

    invoke-static {v12, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_16
    move/from16 v8, v30

    :goto_e
    iget v1, v7, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    move/from16 v12, v31

    if-ne v12, v1, :cond_17

    const/4 v1, 0x1

    :goto_f
    move/from16 v16, v8

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    goto :goto_f

    :goto_10
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v8, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    iget v1, v7, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    move/from16 v8, v32

    if-ne v8, v1, :cond_18

    const/4 v1, 0x1

    :goto_11
    move/from16 v27, v8

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    goto :goto_11

    :goto_12
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v8, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    if-eqz v15, :cond_19

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    iget-object v8, v7, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v15

    goto :goto_13

    :cond_19
    const-string v1, "initializationData must be already set from hvcC atom"

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    :goto_13
    iget-object v1, v7, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v7, "video/mv-hevc"

    move-object/from16 v35, v2

    move-object/from16 v40, v3

    move-object/from16 v31, v7

    move v7, v9

    move/from16 v32, v10

    move/from16 v30, v16

    move/from16 v28, v25

    move-object/from16 v29, v26

    move/from16 v26, v27

    const/16 v3, 0x8

    const/4 v8, -0x1

    move-object/from16 v16, v1

    move/from16 v27, v11

    move/from16 v25, v12

    goto/16 :goto_48

    :cond_1a
    move/from16 v7, v28

    move/from16 v27, v29

    move/from16 v36, v30

    move-object/from16 v2, v35

    move/from16 v28, v25

    move-object/from16 v29, v26

    move/from16 v25, v31

    move/from16 v26, v32

    const v11, 0x76657875

    move-object/from16 v31, v8

    const/16 v32, 0x5

    if-ne v9, v11, :cond_2a

    add-int/lit8 v9, v12, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/4 v11, 0x0

    :goto_14
    sub-int v8, v9, v12

    if-ge v8, v13, :cond_23

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-lez v8, :cond_1b

    const/4 v4, 0x1

    goto :goto_15

    :cond_1b
    const/4 v4, 0x0

    :goto_15
    invoke-static {v1, v4}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    move/from16 v38, v9

    const v9, 0x65796573

    if-ne v4, v9, :cond_22

    add-int/lit8 v9, v38, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v4, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_16
    sub-int v9, v4, v38

    if-ge v9, v8, :cond_21

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-lez v9, :cond_1c

    const/4 v11, 0x1

    goto :goto_17

    :cond_1c
    const/4 v11, 0x0

    :goto_17
    invoke-static {v1, v11}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    move-object/from16 v39, v1

    const v1, 0x73747269

    if-ne v11, v1, :cond_20

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    new-instance v4, Lcom/google/android/gms/tasks/zza;

    new-instance v9, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v11, v1, 0x1

    move/from16 v40, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_18

    :cond_1d
    const/4 v1, 0x0

    :goto_18
    and-int/lit8 v11, v40, 0x2

    move/from16 v41, v8

    const/4 v8, 0x2

    if-ne v11, v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_19

    :cond_1e
    const/4 v8, 0x0

    :goto_19
    and-int/lit8 v11, v40, 0x8

    move-object/from16 v40, v3

    const/16 v3, 0x8

    if-ne v11, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_1a

    :cond_1f
    const/4 v3, 0x0

    :goto_1a
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    iput-boolean v8, v9, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    iput-boolean v3, v9, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    const/16 v1, 0x11

    invoke-direct {v4, v1, v9}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    goto :goto_1b

    :cond_20
    move-object/from16 v40, v3

    move/from16 v41, v8

    add-int/2addr v4, v9

    move-object/from16 v1, v39

    goto :goto_16

    :cond_21
    move-object/from16 v39, v1

    move-object/from16 v40, v3

    move/from16 v41, v8

    const/4 v4, 0x0

    :goto_1b
    move-object v11, v4

    goto :goto_1c

    :cond_22
    move-object/from16 v39, v1

    move-object/from16 v40, v3

    move/from16 v41, v8

    :goto_1c
    add-int v9, v38, v41

    move-object/from16 v4, p8

    move-object/from16 v1, v39

    move-object/from16 v3, v40

    goto/16 :goto_14

    :cond_23
    move-object/from16 v40, v3

    if-nez v11, :cond_24

    const/4 v1, 0x0

    goto :goto_1d

    :cond_24
    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v3, 0x11

    invoke-direct {v1, v3, v11}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    :goto_1d
    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zza;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    if-eqz v2, :cond_27

    iget-object v3, v2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v8, 0x2

    if-lt v3, v8, :cond_27

    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    if-eqz v3, :cond_25

    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_1e

    :cond_25
    const/4 v3, 0x0

    :goto_1e
    const-string v4, "both eye views must be marked as available"

    invoke-static {v4, v3}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    const/16 v24, 0x1

    xor-int/lit8 v1, v1, 0x1

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    :cond_26
    move/from16 v3, v18

    goto :goto_1f

    :cond_27
    move/from16 v3, v18

    const/4 v8, -0x1

    if-ne v3, v8, :cond_29

    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    if-eqz v1, :cond_28

    move/from16 v18, v32

    goto :goto_20

    :cond_28
    const/16 v18, 0x4

    goto :goto_20

    :cond_29
    :goto_1f
    move/from16 v18, v3

    :goto_20
    move-object/from16 v35, v2

    :goto_21
    move/from16 v32, v10

    move/from16 v30, v36

    :goto_22
    const/16 v3, 0x8

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v40, v3

    move/from16 v3, v18

    const v1, 0x64766343

    if-eq v9, v1, :cond_2b

    const v1, 0x64767643

    if-ne v9, v1, :cond_2c

    :cond_2b
    move-object/from16 v18, v2

    move/from16 v45, v3

    move/from16 v32, v10

    move-object/from16 v38, v15

    move/from16 v12, v36

    const/16 v3, 0x8

    const/4 v8, -0x1

    goto/16 :goto_47

    :cond_2c
    const v1, 0x76706343

    const/16 v18, 0xa

    const/16 v37, 0xb

    const/16 v38, 0x7

    const/16 v8, 0xc

    if-ne v9, v1, :cond_32

    if-nez v31, :cond_2d

    const/4 v1, 0x1

    :goto_23
    const/4 v7, 0x0

    goto :goto_24

    :cond_2d
    const/4 v1, 0x0

    goto :goto_23

    :goto_24
    invoke-static {v7, v1}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    const v1, 0x76703038

    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_2e

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    goto :goto_25

    :cond_2e
    move-object v1, v7

    :goto_25
    add-int/lit8 v12, v12, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    const/16 v39, 0x6

    shr-int/lit8 v11, v25, 0x4

    shr-int/lit8 v26, v25, 0x1

    const/16 v41, 0x3

    and-int/lit8 v4, v26, 0x7

    int-to-byte v4, v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    int-to-byte v7, v11

    sget-object v15, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    new-array v8, v8, [B

    const/4 v15, 0x0

    const/16 v24, 0x1

    aput-byte v24, v8, v15

    aput-byte v24, v8, v24

    const/16 v30, 0x2

    aput-byte v9, v8, v30

    aput-byte v30, v8, v41

    const/16 v35, 0x4

    aput-byte v24, v8, v35

    aput-byte v12, v8, v32

    aput-byte v41, v8, v39

    aput-byte v24, v8, v38

    const/16 v9, 0x8

    aput-byte v7, v8, v9

    const/16 v7, 0x9

    aput-byte v35, v8, v7

    aput-byte v24, v8, v18

    aput-byte v4, v8, v37

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v15

    :cond_2f
    and-int/lit8 v4, v25, 0x1

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_26

    :cond_30
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v7

    if-eqz v4, :cond_31

    const/16 v24, 0x1

    goto :goto_27

    :cond_31
    const/16 v24, 0x2

    :goto_27
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v30

    move-object/from16 v31, v1

    move-object/from16 v35, v2

    move/from16 v18, v3

    move/from16 v32, v10

    move/from16 v25, v11

    move/from16 v26, v25

    move/from16 v27, v24

    goto/16 :goto_22

    :cond_32
    const/16 v39, 0x6

    const/16 v41, 0x3

    const v1, 0x61763143

    const-string v4, "BoxParsers"

    if-ne v9, v1, :cond_4b

    add-int/lit8 v1, v13, -0x8

    new-array v7, v1, [B

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v15

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v1, Landroidx/media3/extractor/VorbisBitArray;

    iget-object v7, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v9, v7

    invoke-direct {v1, v9, v7}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/16 v9, 0x8

    mul-int/2addr v7, v9

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    move/from16 v7, v41

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    move/from16 v7, v39

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v7

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    const/16 v43, -0x1

    const/4 v12, 0x2

    if-ne v9, v12, :cond_35

    if-eqz v7, :cond_35

    if-eqz v11, :cond_33

    move v7, v8

    goto :goto_28

    :cond_33
    move/from16 v7, v18

    :goto_28
    if-eqz v11, :cond_34

    move/from16 v18, v8

    :cond_34
    move/from16 v46, v7

    :goto_29
    move/from16 v47, v18

    goto :goto_2c

    :cond_35
    if-gt v9, v12, :cond_38

    if-eqz v7, :cond_36

    move/from16 v9, v18

    goto :goto_2a

    :cond_36
    const/16 v9, 0x8

    :goto_2a
    if-eqz v7, :cond_37

    goto :goto_2b

    :cond_37
    const/16 v18, 0x8

    :goto_2b
    move/from16 v46, v9

    goto :goto_29

    :cond_38
    move/from16 v46, v43

    move/from16 v47, v46

    :goto_2c
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    const/16 v48, 0x0

    const/4 v9, 0x1

    if-eq v11, v9, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported obu_type: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    :goto_2d
    move-object/from16 v1, v42

    goto/16 :goto_35

    :cond_39
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_3a

    const-string v1, "Unsupported obu_extension_flag"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    goto :goto_2d

    :cond_3a
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    if-eqz v9, :cond_3b

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    const/16 v9, 0x7f

    if-le v11, v9, :cond_3b

    const-string v1, "Excessive obu_size"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    goto :goto_2d

    :cond_3b
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_3c

    const-string v1, "Unsupported reduced_still_picture_header"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    goto :goto_2d

    :cond_3c
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_3d

    const-string v1, "Unsupported timing_info_present_flag"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    goto :goto_2d

    :cond_3d
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_3e

    const-string v1, "Unsupported initial_display_delay_present_flag"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v42, Landroidx/media3/common/ColorInfo;

    move/from16 v44, v43

    move/from16 v45, v43

    invoke-direct/range {v42 .. v48}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    goto/16 :goto_2d

    :cond_3e
    move/from16 v4, v32

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    const/4 v12, 0x0

    :goto_2e
    if-gt v12, v9, :cond_40

    invoke-virtual {v1, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    move/from16 v4, v38

    if-le v8, v4, :cond_3f

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    :cond_3f
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x5

    const/16 v8, 0xc

    const/16 v38, 0x7

    goto :goto_2e

    :cond_40
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v24, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_2f

    :cond_41
    const/4 v4, 0x7

    :goto_2f
    invoke-virtual {v1, v4}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_42
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto :goto_30

    :cond_43
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    :goto_30
    if-lez v8, :cond_44

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v8

    if-nez v8, :cond_44

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_44
    const/4 v9, 0x3

    if-eqz v4, :cond_45

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_45
    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v8, 0x2

    if-ne v11, v8, :cond_46

    if-eqz v4, :cond_46

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    :cond_46
    const/4 v9, 0x1

    if-eq v11, v9, :cond_47

    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v4, 0x1

    goto :goto_31

    :cond_47
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_4a

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    const/4 v9, 0x1

    if-nez v4, :cond_48

    if-ne v8, v9, :cond_48

    if-ne v11, v7, :cond_48

    if-nez v12, :cond_48

    move v1, v9

    goto :goto_32

    :cond_48
    invoke-virtual {v1, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v24

    move/from16 v1, v24

    :goto_32
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v43

    if-ne v1, v9, :cond_49

    const/4 v9, 0x1

    goto :goto_33

    :cond_49
    const/4 v9, 0x2

    :goto_33
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    move/from16 v45, v43

    move/from16 v49, v47

    move/from16 v47, v1

    move/from16 v43, v9

    goto :goto_34

    :cond_4a
    move/from16 v45, v43

    move/from16 v49, v47

    move/from16 v47, v45

    :goto_34
    new-instance v44, Landroidx/media3/common/ColorInfo;

    move-object/from16 v50, v48

    move/from16 v48, v46

    move/from16 v46, v43

    invoke-direct/range {v44 .. v50}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    move-object/from16 v1, v44

    :goto_35
    const-string/jumbo v4, "video/av01"

    iget v7, v1, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    iget v8, v1, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    iget v9, v1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iget v11, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    move/from16 v30, v1

    move-object/from16 v35, v2

    move/from16 v18, v3

    move-object/from16 v31, v4

    move/from16 v25, v7

    move/from16 v26, v8

    move v7, v9

    move/from16 v32, v10

    move/from16 v27, v11

    goto/16 :goto_22

    :cond_4b
    const v1, 0x636c6c69

    const/16 v8, 0x19

    if-ne v9, v1, :cond_4d

    if-nez v21, :cond_4c

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_4c
    move-object/from16 v1, v21

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v1

    move-object/from16 v35, v2

    move/from16 v18, v3

    goto/16 :goto_21

    :cond_4d
    const v1, 0x6d646376

    if-ne v9, v1, :cond_4f

    if-nez v21, :cond_4e

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_4e
    move-object/from16 v1, v21

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v11

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    move-object/from16 v18, v2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    move/from16 v32, v10

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    move-object/from16 v38, v15

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v15

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v41

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v43

    move/from16 v45, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v8, v41, v2

    long-to-int v4, v8

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v2, v43, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v1

    :goto_36
    move-object/from16 v35, v18

    :goto_37
    move/from16 v30, v36

    move-object/from16 v15, v38

    :goto_38
    move/from16 v18, v45

    goto/16 :goto_22

    :cond_4f
    move-object/from16 v18, v2

    move/from16 v45, v3

    move/from16 v32, v10

    move-object/from16 v38, v15

    const v1, 0x64323633

    if-ne v9, v1, :cond_51

    if-nez v31, :cond_50

    const/4 v9, 0x1

    :goto_39
    const/4 v2, 0x0

    goto :goto_3a

    :cond_50
    const/4 v9, 0x0

    goto :goto_39

    :goto_3a
    invoke-static {v2, v9}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    move-object/from16 v35, v18

    move-object/from16 v31, v29

    goto :goto_37

    :cond_51
    const/4 v2, 0x0

    const v1, 0x65736473

    if-ne v9, v1, :cond_54

    if-nez v31, :cond_52

    const/4 v9, 0x1

    goto :goto_3b

    :cond_52
    const/4 v9, 0x0

    :goto_3b
    invoke-static {v2, v9}, Landroidx/media3/extractor/AacUtil;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-static {v12, v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v1

    iget-object v3, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v4, [B

    if-eqz v4, :cond_53

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v15

    goto :goto_3c

    :cond_53
    move-object/from16 v15, v38

    :goto_3c
    move-object/from16 v34, v1

    move-object/from16 v31, v3

    move-object/from16 v35, v18

    move/from16 v30, v36

    goto :goto_38

    :cond_54
    const v1, 0x62747274

    if-ne v9, v1, :cond_55

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v1, v8, v9, v3, v4}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    move-object/from16 v33, v1

    goto :goto_36

    :cond_55
    const v1, 0x70617370

    if-ne v9, v1, :cond_56

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v14, v1

    move-object/from16 v35, v18

    move/from16 v30, v36

    move-object/from16 v15, v38

    move/from16 v18, v45

    const/16 v3, 0x8

    const/4 v8, -0x1

    const/16 v22, 0x1

    goto/16 :goto_48

    :cond_56
    const v1, 0x73763364

    if-ne v9, v1, :cond_59

    add-int/lit8 v1, v12, 0x8

    :goto_3d
    sub-int v3, v1, v12

    if-ge v3, v13, :cond_58

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v8, 0x70726f6a

    if-ne v4, v8, :cond_57

    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/2addr v3, v1

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v17, v1

    goto/16 :goto_36

    :cond_57
    add-int/2addr v1, v3

    goto :goto_3d

    :cond_58
    move-object/from16 v17, v2

    goto/16 :goto_36

    :cond_59
    const v1, 0x73743364

    if-ne v9, v1, :cond_5f

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5c

    const/4 v8, 0x2

    if-eq v1, v8, :cond_5b

    if-eq v1, v9, :cond_5a

    goto :goto_3e

    :cond_5a
    move/from16 v24, v9

    goto :goto_3f

    :cond_5b
    const/16 v24, 0x2

    goto :goto_3f

    :cond_5c
    const/16 v24, 0x1

    goto :goto_3f

    :cond_5d
    const/16 v24, 0x0

    goto :goto_3f

    :cond_5e
    :goto_3e
    move/from16 v24, v45

    :goto_3f
    move-object/from16 v35, v18

    move/from16 v18, v24

    move/from16 v30, v36

    move-object/from16 v15, v38

    goto/16 :goto_22

    :cond_5f
    const v1, 0x61707643

    if-ne v9, v1, :cond_64

    add-int/lit8 v1, v13, -0xc

    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v4

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    new-instance v8, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v8, v1, v3}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    iget v1, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/16 v3, 0x8

    mul-int/2addr v1, v3

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    invoke-virtual {v8, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    move v9, v15

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v23, -0x1

    const/16 v31, -0x1

    :goto_40
    if-ge v9, v7, :cond_63

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    invoke-virtual {v8, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    move/from16 v25, v23

    move/from16 v23, v12

    move v12, v11

    move v11, v10

    move v10, v15

    :goto_41
    if-ge v10, v2, :cond_62

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v25

    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBit()V

    move/from16 v15, v37

    invoke-virtual {v8, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    const/4 v15, 0x4

    invoke-virtual {v8, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v8, v15}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v26

    add-int/lit8 v31, v26, 0x8

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    if-eqz v25, :cond_61

    invoke-virtual {v8, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v8, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBytes(I)V

    invoke-virtual {v8}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v23

    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v11

    if-eqz v23, :cond_60

    move/from16 v23, v1

    goto :goto_42

    :cond_60
    const/16 v23, 0x2

    :goto_42
    invoke-static {v12}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v12

    move/from16 v51, v23

    move/from16 v23, v12

    move/from16 v12, v51

    :cond_61
    add-int/lit8 v10, v10, 0x1

    move/from16 v25, v31

    const/4 v15, 0x0

    const/16 v37, 0xb

    goto :goto_41

    :cond_62
    const/4 v15, 0x4

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    move v11, v12

    move/from16 v12, v23

    move/from16 v23, v25

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v37, 0xb

    goto :goto_40

    :cond_63
    new-instance v1, Landroidx/media3/common/ColorInfo;

    const-string/jumbo v1, "video/apv"

    move-object v15, v4

    move v7, v10

    move/from16 v27, v11

    move/from16 v30, v12

    move-object/from16 v35, v18

    move/from16 v26, v23

    move/from16 v25, v31

    move/from16 v18, v45

    const/4 v8, -0x1

    move-object/from16 v31, v1

    goto/16 :goto_48

    :cond_64
    const/4 v1, 0x1

    const/16 v3, 0x8

    const v2, 0x636f6c72

    if-ne v9, v2, :cond_69

    const/4 v8, -0x1

    move/from16 v12, v36

    if-ne v7, v8, :cond_6a

    if-ne v12, v8, :cond_6a

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v9, 0x6e636c78

    if-eq v2, v9, :cond_66

    const v9, 0x6e636c63

    if-ne v2, v9, :cond_65

    goto :goto_43

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported color type: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/media3/decoder/Buffer;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_66
    :goto_43
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v7, 0x13

    if-ne v13, v7, :cond_67

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_67

    move v7, v1

    goto :goto_44

    :cond_67
    const/4 v7, 0x0

    :goto_44
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    if-eqz v7, :cond_68

    move v12, v1

    :cond_68
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v30

    move v7, v2

    move/from16 v27, v12

    :goto_45
    move-object/from16 v35, v18

    move-object/from16 v15, v38

    move/from16 v18, v45

    goto :goto_48

    :cond_69
    move/from16 v12, v36

    const/4 v8, -0x1

    :cond_6a
    :goto_46
    move/from16 v30, v12

    goto :goto_45

    :goto_47
    invoke-static {v0}, Lcom/google/common/base/Joiner;->parse(Landroidx/media3/common/util/ParsableByteArray;)Lcom/google/common/base/Joiner;

    move-result-object v1

    if-eqz v1, :cond_6a

    iget-object v1, v1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    const-string/jumbo v2, "video/dolby-vision"

    move-object/from16 v16, v1

    move-object/from16 v31, v2

    goto :goto_46

    :goto_48
    add-int v1, v28, v13

    move/from16 v2, p3

    move-object/from16 v4, p8

    move/from16 v28, v7

    move-object/from16 v11, v29

    move-object/from16 v8, v31

    move/from16 v10, v32

    move-object/from16 v3, v40

    move v7, v1

    move/from16 v31, v25

    move/from16 v32, v26

    move/from16 v29, v27

    move/from16 v1, p2

    goto/16 :goto_2

    :goto_49
    if-nez v31, :cond_6b

    return-void

    :cond_6b
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v9, v16

    iput-object v9, v0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iput v5, v0, Landroidx/media3/common/Format$Builder;->width:I

    iput v6, v0, Landroidx/media3/common/Format$Builder;->height:I

    iput v14, v0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    move/from16 v1, p6

    iput v1, v0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    move-object/from16 v9, v17

    iput-object v9, v0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    move/from16 v3, v45

    iput v3, v0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    move-object/from16 v9, v38

    iput-object v9, v0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    move/from16 v1, v19

    iput v1, v0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    move/from16 v1, v20

    iput v1, v0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    move-object/from16 v3, v40

    iput-object v3, v0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    move-object/from16 v1, p5

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    if-eqz v21, :cond_6c

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_4a

    :cond_6c
    const/4 v9, 0x0

    :goto_4a
    new-instance v21, Landroidx/media3/common/ColorInfo;

    move/from16 v22, v7

    move/from16 v24, v12

    move/from16 v23, v27

    move-object/from16 v27, v9

    invoke-direct/range {v21 .. v27}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    move-object/from16 v1, v21

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    move-object/from16 v9, v33

    if-eqz v9, :cond_6d

    iget-wide v1, v9, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v1, v9, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    goto :goto_4b

    :cond_6d
    move-object/from16 v9, v34

    if-eqz v9, :cond_6e

    iget-wide v1, v9, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v1, v9, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    :cond_6e
    :goto_4b
    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v4, p8

    iput-object v1, v4, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    return-void
.end method
