.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isCropping$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isEditing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isPdfViewerAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isScanResultFromAdobeApp$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final showDiscardScanDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final showRedirectHintToast$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final showSaveLocationDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDiscardScanDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showSaveLocationDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showRedirectHintToast$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isPdfViewerAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final isCropping()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isEditing()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isScanResultFromAdobeApp()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
