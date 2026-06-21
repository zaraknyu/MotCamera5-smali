.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public final mAutoHide:Z

.field public final mCenterRotation:Z

.field public final mContentDescription:Ljava/lang/String;

.field public final mDismissOnCaptureStarts:Z

.field public final mGraphicResource:I

.field public final mGraphicResourceSize:Landroid/util/Size;

.field public final mIgnoreVisibilityRules:Z

.field public final mLandscapeAlignCenter:Z

.field public final mText:Ljava/lang/String;

.field public final mTextDescriptionStr:Ljava/lang/String;

.field public final mTextResource:I

.field public final mToastDuration:I

.field public final mToastStyle:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;IILandroid/util/Size;ILcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;ZILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mGraphicResource:I

    iput-object p5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mGraphicResourceSize:Landroid/util/Size;

    iput p6, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    iput-object p7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean p8, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    iput p9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    iput-object p10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    iput-object p11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    iput-boolean p13, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mDismissOnCaptureStarts:Z

    iput-boolean p14, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mCenterRotation:Z

    return-void
.end method
