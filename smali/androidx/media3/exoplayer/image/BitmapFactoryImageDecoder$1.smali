.class public final Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final synthetic this$0:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/decoder/Buffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->this$0:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    iput-boolean v0, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->shouldBeSkipped:Z

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->this$0:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
