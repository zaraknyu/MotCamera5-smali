.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public mAutoHide:Z

.field public mCenterRotation:Z

.field public mContentDescription:Ljava/lang/String;

.field public mDismissOnCaptureStart:Z

.field public mGraphicResource:I

.field public mGraphicResourceSize:Landroid/util/Size;

.field public mIgnoreVisibilityRules:Z

.field public mLandscapeAlignCenter:Z

.field public final mText:Ljava/lang/String;

.field public mTextDescriptionStr:Ljava/lang/String;

.field public final mTextResource:I

.field public mToastDuration:Ljava/lang/Integer;

.field public mToastStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mDismissOnCaptureStart:Z

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mCenterRotation:Z

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mTextResource:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mDismissOnCaptureStart:Z

    const/4 v1, 0x3

    .line 13
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    .line 15
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mCenterRotation:Z

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mTextDescriptionStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    goto :goto_0

    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    :cond_7
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    if-nez v1, :cond_8

    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    :cond_8
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean v3, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mGraphicResource:I

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mGraphicResourceSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iget-boolean v10, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    iget v11, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mTextDescriptionStr:Ljava/lang/String;

    iget-object v13, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mContentDescription:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    iget-boolean v15, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mDismissOnCaptureStart:Z

    iget-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mCenterRotation:Z

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mText:Ljava/lang/String;

    iget v5, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mTextResource:I

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZLjava/lang/String;IILandroid/util/Size;ILcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;ZILjava/lang/String;Ljava/lang/String;ZZZ)V

    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    return-object v2
.end method
