.class public final synthetic Lcom/google/mlkit/vision/common/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/io/Closeable;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/zza;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Ljava/io/Closeable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzh;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Ljava/io/Closeable;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/zza;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->$r8$classId:I

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Ljava/io/Closeable;

    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/zza;->zzb:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    check-cast v1, Landroidx/room/RoomSQLiteQuery;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    check-cast v1, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    check-cast p0, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zza:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()V

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmv;->$r8$clinit:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()V

    const-string v2, ""

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zza:Ljava/util/HashMap;

    const-string v3, "detectorTaskWithResource#run"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zzb()V

    :try_start_1
    iget-object v1, v1, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzl;

    invoke-virtual {v1, p0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->run(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_3
    const-string v2, "addSuppressed"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_3
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public finalize()V
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Ljava/io/Closeable;

    check-cast p0, Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
