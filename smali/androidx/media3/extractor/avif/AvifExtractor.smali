.class public final Landroidx/media3/extractor/avif/AvifExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v0, -0x1

    const-string v1, "image/avif"

    invoke-direct {p1, v0, v0, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v0, -0x1

    const-string v1, "image/webp"

    invoke-direct {p1, v0, v0, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v0, -0x1

    const-string v1, "image/heif"

    invoke-direct {p1, v0, v0, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final release$androidx$media3$extractor$avif$AvifExtractor()V
    .locals 0

    return-void
.end method

.method private final release$androidx$media3$extractor$heif$HeifExtractor()V
    .locals 0

    return-void
.end method

.method private final release$androidx$media3$extractor$webp$WebpExtractor()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    return-void
.end method

.method public final seek(JJ)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->seek(JJ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->seek(JJ)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->imageExtractor:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->seek(JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7

    iget v0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v5, 0x52494646

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v2, v2, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const-wide/32 v0, 0x57454250

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const v4, 0x66747970

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const v0, 0x68656963

    int-to-long v2, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :pswitch_1
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget-object p0, p0, Landroidx/media3/extractor/avif/AvifExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const v4, 0x66747970

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const v0, 0x61766966

    int-to-long v2, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
