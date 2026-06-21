.class public Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LABColorPixel"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public L:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;->L:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;->A:I

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;->B:I

    return-void
.end method
