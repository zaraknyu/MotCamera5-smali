.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMappedTag:Ljava/lang/String;

.field public final mTranslateCamera:Z

.field public final mTranslateMode:Z

.field public final synthetic this$0:Landroidx/room/concurrent/FileLock;


# direct methods
.method public constructor <init>(Landroidx/room/concurrent/FileLock;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Landroidx/room/concurrent/FileLock;

    iput-object p2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mMappedTag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    iput-boolean p4, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    return-void
.end method


# virtual methods
.method public getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 3

    const-string p1, " - "

    iget-object p3, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mMappedTag:Ljava/lang/String;

    :try_start_0
    const-string v0, "coldstart"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :catch_0
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    const-string v1, "mode"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    if-eqz v2, :cond_2

    if-eq v1, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Unknown"

    :goto_1
    invoke-static {p3, p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    :try_start_2
    const-string v0, "camera"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p2, ""

    :goto_2
    iget-boolean p0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    if-eqz p0, :cond_3

    invoke-static {p3, p1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    return-object p3
.end method
