.class public final Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAutoHide:Z

.field public final mGraphicResource:I

.field public final mTextResource:I

.field public final mToastDuration:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mAutoHide:Z

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mTextResource:I

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mGraphicResource:I

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;->mToastDuration:I

    return-void
.end method
