.class public final Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;->DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    return-void
.end method


# virtual methods
.method public final createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
    .locals 3

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "application/x-scte35"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "application/x-emsg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "application/id3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string p1, "application/x-icy"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :sswitch_4
    const-string p1, "application/vnd.dvb.ait"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/icy/IcyDecoder;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>(I)V

    return-object p0

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p1, "application/id3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-emsg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-scte35"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-icy"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/vnd.dvb.ait"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
