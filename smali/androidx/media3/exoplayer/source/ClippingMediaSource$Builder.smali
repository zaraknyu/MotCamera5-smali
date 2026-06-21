.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buildCalled:Z

.field public enableInitialDiscontinuity:Z

.field public endPositionUs:J

.field public final mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    return-void
.end method
