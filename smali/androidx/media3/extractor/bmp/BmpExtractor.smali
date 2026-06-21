.class public final Landroidx/media3/extractor/bmp/BmpExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final imageExtractor:Landroidx/media3/extractor/Extractor;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    :goto_0
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    iput p1, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 p2, 0x2

    const-string v0, "image/bmp"

    const/16 v1, 0x424d

    invoke-direct {p1, v1, p2, v0}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 p2, 0x2

    const-string v0, "image/png"

    const v1, 0x8950

    invoke-direct {p1, v1, p2, v0}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final release$androidx$media3$extractor$bmp$BmpExtractor()V
    .locals 0

    return-void
.end method

.method private final release$androidx$media3$extractor$png$PngExtractor()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

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

    iget v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

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
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->release()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final seek(JJ)V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->seek(JJ)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

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
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->imageExtractor:Landroidx/media3/extractor/Extractor;

    check-cast p0, Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
