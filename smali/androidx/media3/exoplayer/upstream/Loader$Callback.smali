.class public interface abstract Landroidx/media3/exoplayer/upstream/Loader$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onLoadCanceled(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;Z)V
.end method

.method public abstract onLoadCompleted(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)V
.end method

.method public abstract onLoadError(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;Ljava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
.end method

.method public abstract onLoadStarted(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JI)V
.end method
