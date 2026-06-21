.class public Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTexture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsEffectRenderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPUTexture"
.end annotation


# instance fields
.field public isUpSideDown:Z

.field public needHorizontalFlip:Z

.field public texFormat:I

.field public texId:I

.field public textureInfo:Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTextureInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTexture;->texId:I

    iput-boolean v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTexture;->isUpSideDown:Z

    iput-boolean v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTexture;->needHorizontalFlip:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore$GPUTexture;->texFormat:I

    return-void
.end method
