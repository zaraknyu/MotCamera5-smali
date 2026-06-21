.class public final Landroidx/media3/exoplayer/RendererConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;


# instance fields
.field public final offloadModePreferred:I

.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    sput-object v0, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/RendererConfiguration;

    iget v0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    iget v1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-ne v0, v1, :cond_2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    shl-int/lit8 v0, v0, 0x1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    add-int/2addr v0, p0

    return v0
.end method
