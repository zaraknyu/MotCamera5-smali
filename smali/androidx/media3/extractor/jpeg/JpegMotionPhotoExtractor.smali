.class public final Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field public marker:I

.field public motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field public mp4ExtractorStartOffsetExtractorInput:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field public mp4StartPosition:J

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public segmentLength:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    return-void
.end method


# virtual methods
.method public final endReading()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const-wide/16 v4, -0x1

    iget-object v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_17

    if-eq v3, v9, :cond_16

    if-eq v3, v8, :cond_a

    const/4 v4, 0x5

    if-eq v3, v7, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    new-instance v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-wide v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v3, v1, v4, v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_4
    return v1

    :cond_5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    cmp-long v3, v11, v13

    if-eqz v3, :cond_6

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v9

    :cond_6
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v10, v9, v2, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully(IZ[BI)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return v10

    :cond_7
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v2, :cond_8

    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/collection/internal/Lock;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    :cond_8
    new-instance v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v2, v1, v5, v6}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    invoke-direct {v2, v5, v6, v3, v8}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(JLjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "image/jpeg"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Metadata;

    filled-new-array {v1}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-direct {v5, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v3, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return v10

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return v10

    :cond_a
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_14

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {v1, v3, v10, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v3, :cond_15

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_c

    :cond_b
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_c
    :try_start_0
    invoke-static {v2}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/RegularImmutableList;

    iget v11, v2, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v11, v8, :cond_e

    goto :goto_0

    :cond_e
    sub-int/2addr v11, v9

    move-wide v13, v4

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    move v8, v10

    :goto_2
    if-ltz v11, :cond_12

    invoke-virtual {v2, v11}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string/jumbo v12, "video/mp4"

    iget-object v3, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v8

    if-nez v11, :cond_f

    iget-wide v8, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    :goto_3
    move-wide/from16 v23, v8

    move-wide v8, v6

    move-wide/from16 v6, v23

    goto :goto_4

    :cond_f
    iget-wide v8, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v8, v6, v8

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_10

    cmp-long v12, v6, v8

    if-eqz v12, :cond_10

    sub-long v21, v8, v6

    move-wide/from16 v19, v6

    move v3, v10

    :cond_10
    if-nez v11, :cond_11

    move-wide v13, v6

    move-wide v15, v8

    :cond_11
    add-int/lit8 v11, v11, -0x1

    move v8, v3

    goto :goto_2

    :cond_12
    cmp-long v2, v19, v4

    if-eqz v2, :cond_b

    cmp-long v2, v21, v4

    if-eqz v2, :cond_b

    cmp-long v2, v13, v4

    if-eqz v2, :cond_b

    cmp-long v2, v15, v4

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    new-instance v12, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    move-object v3, v12

    :goto_5
    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-eqz v3, :cond_15

    iget-wide v1, v3, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    goto :goto_6

    :cond_14
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_15
    :goto_6
    iput v10, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return v10

    :cond_16
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    sub-int/2addr v1, v8

    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    iput v8, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return v10

    :cond_17
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v2, 0xffda

    if-ne v1, v2, :cond_19

    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    iput v7, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return v10

    :cond_18
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return v10

    :cond_19
    const v2, 0xffd0

    if-lt v1, v2, :cond_1a

    const v2, 0xffd9

    if-le v1, v2, :cond_1b

    :cond_1a
    const v2, 0xff01

    if-eq v1, v2, :cond_1b

    iput v9, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    :cond_1b
    return v10
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const v4, 0xffd8

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v3, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v4, 0xffe0

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v3, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v3, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    :cond_1
    iget p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v2, 0xffe1

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v3, v1, p0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const-wide/32 v1, 0x45786966    # 5.758429993E-315

    cmp-long p0, p0, v1

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v3
.end method
