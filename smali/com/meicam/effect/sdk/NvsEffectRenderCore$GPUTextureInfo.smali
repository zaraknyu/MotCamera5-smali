.class public Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsEffectRenderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPUTextureInfo"
.end annotation


# instance fields
.field public centerPointX:I

.field public centerPointY:I

.field public imagePAR:Lcom/meicam/effect/sdk/NvsRational;

.field public proxyScale:Lcom/meicam/effect/sdk/NvsRational;

.field public textureHeight:I

.field public textureWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;->textureWidth:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;->textureHeight:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;->centerPointX:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;->centerPointY:I

    return-void
.end method
