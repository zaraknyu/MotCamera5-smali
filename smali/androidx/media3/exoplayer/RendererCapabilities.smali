.class public interface abstract Landroidx/media3/exoplayer/RendererCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(IIII)I
    .locals 0

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/lit16 p0, p0, 0x80

    or-int/2addr p0, p3

    return p0
.end method

.method public static isFormatSupported(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clearListener()V
    .locals 0

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public setListener(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 0

    return-void
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)I
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
.end method
