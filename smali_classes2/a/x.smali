.class public final La/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, La/x;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, La/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, La/w;->a:La/w;

    sget-object p0, La/v;->a:La/v;

    sget-object p0, La/t;->a:La/t;

    const/high16 p0, 0x3f400000    # 0.75f

    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object p0, La/u;->a:La/u;

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 p0, 0x0

    invoke-static {p0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    const v1, 0x16e3600

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    sget-object v1, La/w;->a:La/w;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v1, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {p0, v0}, La/l;->a(II)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    sget-object v2, La/v;->a:La/v;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {p0, v2}, La/l;->a(II)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    sget-object v2, La/t;->a:La/t;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    invoke-static {p0, v0}, La/l;->a(II)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    sget-object v2, La/u;->a:La/u;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3c1

    invoke-static {v2, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, La/l;->a(II)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, v1}, La/l;->a(IZ)I

    move-result v0

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object p0, La/w;->a:La/w;

    sget-object v0, La/v;->a:La/v;

    sget-object v1, La/t;->a:La/t;

    sget-object v2, La/u;->a:La/u;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ScanConfiguration(productName=null, productVersion=null, outputProcessedImages=false, simulateCropFailure=false, simulateFilterFailure=false, recordYUVEnabled=false, imageSizeInPixels=24000000, jpegCompressionQuality=80, scanComponentLandingScreen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", captureScreenAutoLaunched=false, enableMagicCleanBetaFeatures=false, cropExperimentName=null, coachmarkEnabled=false, isTryItNow=false, requireSignedInUser=true, savePDFToScan=true, ocrState=0, allowOCRAutoOrientation=false, reviewScreenActionButtonType="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", reviewScreenCustomAction=0, startInSimpleMode=false, outputOriginalImages=false, ocrPageLimitEnabled=true, showDebugInfo=false, allowCameraInMultiWindowMode=true, allowBackgroundMagicCleanTasks=false, allowLightModeCapture=false, eraserEnabled=false, adjustEnabled=false, markupEnabled=false, eraserExtraToolsEnabled=false, docDetectionEnabled=true, addPhotoEnabled=true, resizeEnabled=false, reorderEnabled=true, cropEnabled=true, rotateEnabled=true, filterEnabled=true, deleteEnabled=true, cameraFacingType="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", preferredAspectRatio=0.75, preferredAnalysisSize=null, maximumPageLimit=0, captureTypeEnabled=true, newScanCreationType="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", clientObject=null, shouldApplyAllPageSize=true, upsellEnabled=false, allowPromotions=true, qrCodeEnabled=true, quickActionsEnabled=true, idCardEnabled=false, newMarkupFeaturesEnabled=false, lockMarkupAspectRatio=false, newAnnotationFeaturesEnabled=false, allowRenameFile=true, bulkScanType=4, shouldShowPulsatingHint=true, allowReviewOverflowButton=false, showProtectInReview=false, hideHSSBehindPaywall=true, hssFreeTrial=true, showBulkScanModelState=false, showBulkScanThumbnailPreview=false, shareInQuickSaveEnabled=false, isSdk=false, useBackInsteadOfHome=false, showThumbnailCarouselInReview=false, enableNewRetake=true, enableMultiPageEdit=false, editInQuickSaveEnabled=false)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p0, "dest"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const v0, 0x16e3600

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, La/w;->a:La/w;

    const-string v0, "CAPTURE"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v1, La/v;->a:La/v;

    const-string v1, "SAVE_PDF"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v1, La/t;->a:La/t;

    const-string v1, "CAMERA_FACING_REAR"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v1, La/u;->a:La/u;

    const-string v1, "CAPTURE_AND_IMPORT"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
