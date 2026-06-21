.class public abstract Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static downloadDialogAction:I

.field public static hasFullyScrolled:Z

.field public static instrumentationData:Ljava/util/ArrayList;

.field public static retakeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    const-string v0, "AdobeInstrumentation"

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static processAfterSaveAnalytics(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostDocEdit(Z)V

    return-void
.end method

.method public static processDiscardAnalytics(IIII)V
    .locals 3

    .line 10
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 12
    const-string v1, "ANALYTICS_ADOBE_NUMBER_PAGES"

    .line 13
    iget-object v2, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAdobeDiscardValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 14
    invoke-virtual {v2, p0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 15
    iget-object p0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAdobeDiscardValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "ANALYTICS_ADOBE_NUMBER_RETAKES"

    invoke-virtual {p0, p3, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 16
    const-string p3, "ANALYTICS_ADOBE_DIALOG_ACTION"

    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 18
    const-string p2, "ANALYTICS_ADOBE_DISCARD_ACTION"

    const/4 p3, 0x1

    .line 19
    invoke-virtual {p0, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const-string p2, "ANALYTICS_ADOBE_DISCARD_TYPE"

    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 22
    iget-object p1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "SEQID"

    invoke-virtual {p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 23
    invoke-virtual {p0, v1, v2, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    .line 24
    iget-object p1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/OneOffEvent;

    iget-object p2, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Landroidx/work/impl/DefaultRunnableScheduler;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->clear()V

    .line 26
    iget-object p0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->clear()V

    return-void
.end method

.method public static processDiscardAnalytics(Z)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->readDataFromJson()Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getDownloadDialogAction()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getRetakeCount()I

    move-result p0

    const/4 v2, 0x2

    .line 5
    invoke-static {v0, v2, v1, p0}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processDiscardAnalytics(IIII)V

    :cond_0
    return-void

    .line 6
    :cond_1
    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object p0

    invoke-virtual {p0}, Lh/C;->getPageCount()I

    move-result p0

    .line 7
    sget v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    .line 8
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->retakeCount:I

    const/4 v2, 0x1

    .line 9
    invoke-static {p0, v2, v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processDiscardAnalytics(IIII)V

    return-void
.end method

.method public static processOnSaveAnalytics(Z)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarCrop()I

    move-result v10

    add-int/2addr v3, v10

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarRotate()I

    move-result v10

    add-int/2addr v4, v10

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarFilter()I

    move-result v10

    add-int/2addr v5, v10

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarMarkup()I

    move-result v10

    add-int/2addr v6, v10

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarCleanup()I

    move-result v10

    add-int/2addr v7, v10

    invoke-virtual {v9}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->isAutoCapture()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    invoke-virtual {v1}, Lh/C;->getPageCount()I

    move-result v1

    const-string v9, "ANALYTICS_ADOBE_NUMBER_PAGES"

    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v9, "ANALYTICS_ADOBE_NUMBER_RETAKES"

    sget v10, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->retakeCount:I

    invoke-virtual {v0, v10, v9}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v9, "ANALYTICS_ADOBE_DIALOG_ACTION"

    sget v10, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    invoke-virtual {v0, v10, v9}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v9, "ANALYTICS_ADOBE_DISCARD_ACTION"

    invoke-virtual {v1, v9, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "ANALYTICS_ADOBE_DISCARD_TYPE"

    invoke-virtual {v0, v2, v9}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_TOOLBAR_CROP"

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_TOOLBAR_ROTATE"

    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_TOOLBAR_FILTER"

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_TOOLBAR_MARKUP"

    invoke-virtual {v0, v6, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_TOOLBAR_CLNUP"

    invoke-virtual {v0, v7, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_AUTO_CAPTURE"

    invoke-virtual {v0, v8, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const-string v2, "ANALYTICS_ADOBE_FULL_SCROLL_TOOLBAR"

    sget-boolean v3, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->hasFullyScrolled:Z

    invoke-virtual {v1, v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ANALYTICS_ADOBE_SAVED_ON_ADOBE_APP"

    invoke-virtual {v1, v2, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostDocEdit(Z)V

    return-void
.end method

.method public static readDataFromJson()Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    const-string v2, "instrumentation_data.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    return-object v0
.end method

.method public static setToolbarAction(II)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "instrumentationData was empty when setting toolbar action for index: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", returning"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarMarkup()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setToolbarMarkup(I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarCleanup()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setToolbarCleanup(I)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarFilter()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setToolbarFilter(I)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarRotate()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setToolbarRotate(I)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->getToolbarCrop()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/adobe_scan/PageInstrumentationData;->setToolbarCrop(I)V

    return-void
.end method
