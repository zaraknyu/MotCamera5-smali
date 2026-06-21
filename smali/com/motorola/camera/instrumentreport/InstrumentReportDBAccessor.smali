.class public final Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSERTQUERY_COLUMNS:[Ljava/lang/String;


# instance fields
.field public mDB:Landroid/database/sqlite/SQLiteDatabase;

.field public final mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

.field public volatile mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string/jumbo v1, "timestamp"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->INSERTQUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    const/16 v4, 0xd

    const/4 v5, 0x1

    const-string v2, "KPIAndCurrentDrain.db"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    return-void
.end method


# virtual methods
.method public final declared-synchronized deleteData(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "Exception getting DB connection:"

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    const-string v2, "WHERE_CLAUSE"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WHERE_ARGS"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_4
    const-string v1, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 5

    const-string v0, "Exception getting DB connection:"

    const-string v1, "Exception getting cursor: "

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "RAW_SQL"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SELECTION_ARGS"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    :catch_1
    move-exception p1

    :try_start_5
    const-string v1, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
