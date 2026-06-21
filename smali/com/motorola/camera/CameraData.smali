.class public final Lcom/motorola/camera/CameraData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p3, p4, p5}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p3, "GLOBAL_UUID"

    invoke-virtual {p0, p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;I)V

    .line 10
    iget-object p0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, p5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p13

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;I)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "FILE_PATH"

    invoke-virtual {p1, p2, p5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "DATE_TAKEN"

    invoke-virtual {p1, p6, p7, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "DATE_MODIFIED"

    invoke-virtual {p1, p8, p9, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "ORIENTATION"

    move/from16 p3, p12

    invoke-virtual {p1, p3, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "THUMB_WIDTH"

    move/from16 p3, p10

    invoke-virtual {p1, p3, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p1, "THUMB_HEIGHT"

    move/from16 p2, p11

    invoke-virtual {p0, p2, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p13}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p2, "SEQ_ID"

    invoke-virtual {p1, p2, p14}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p1, "CAPTURE_MODE"

    invoke-virtual {p0, p15, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIILandroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 23
    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-object/from16 v0, p13

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    iget-object p0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p1, "ERROR_CASE"

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz p1, :cond_0

    .line 3
    const-string p0, "ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    .line 4
    :cond_0
    const-string p0, "URI"

    invoke-virtual {v0, p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    const-string p0, "FILE_NAME"

    invoke-virtual {v0, p0, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p0, "DATE_TYPE"

    invoke-virtual {v0, p3, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 27
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/CameraData;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-nez p1, :cond_0

    .line 30
    const-string p0, "CameraData"

    const-string p1, "Init with invalid camera data"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 31
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 32
    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p1, [B

    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v0, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putAll(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/motorola/camera/CameraData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    check-cast p1, Lcom/motorola/camera/CameraData;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final getCaptureMode()I
    .locals 2

    const-string v0, "CAPTURE_MODE"

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDataType()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "DATE_TYPE"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDateModified()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "DATE_MODIFIED"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDateTaken()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "DATE_TAKEN"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "FILE_NAME"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "ORIENTATION"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "SEQ_ID"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0
.end method

.method public final getTaskID()Lcom/motorola/camera/background/common/TaskId;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string/jumbo v0, "task_id"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public final getThumbHeight()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "THUMB_HEIGHT"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getThumbWidth()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "THUMB_WIDTH"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "URI"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isFromCurrentSession()Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "GLOBAL_UUID"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isProcessingUri()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v0, "PROCESSING_URI"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
