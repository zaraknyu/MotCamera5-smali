.class public final Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final errorCode:I

.field public final format:Landroidx/media3/common/Format;

.field public final isRecoverable:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    return-void
.end method
