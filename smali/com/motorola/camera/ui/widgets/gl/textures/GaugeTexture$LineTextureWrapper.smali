.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;

.field public final mValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    return-void
.end method
