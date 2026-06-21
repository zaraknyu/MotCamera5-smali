.class public final Landroidx/media3/extractor/mp4/BoxParser$StriData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eyeViewsReversed:Z

.field public hasLeftEyeView:Z

.field public hasRightEyeView:Z


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    return-object v0
.end method
