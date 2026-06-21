.class public final Landroidx/room/ObservedTableVersions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;
.implements Landroidx/compose/animation/core/Animations;
.implements Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;
.implements Landroidx/compose/ui/graphics/ColorProducer;
.implements Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
.implements Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;
.implements Landroidx/media3/ui/TrackNameProvider;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic $r8$classId:I

.field public versions:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(CI)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array p1, p1, [I

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void

    .line 26
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void

    .line 27
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Lcom/google/android/gms/dynamite/zzf;

    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void

    .line 31
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    iput-object p2, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/room/concurrent/FileLock;

    invoke-direct {v0, p1}, Landroidx/room/concurrent/FileLock;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroidx/compose/animation/FlingCalculator;

    .line 6
    sget v1, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->platformFlingScrollFriction:F

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    sget v1, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    const v1, 0x43c10b3d

    mul-float/2addr p1, v1

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr p1, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v1

    .line 9
    iput p1, v0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 10
    iput-object v0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/AudioAttributes;)V
    .locals 4

    const/16 p1, 0x10

    iput p1, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 19
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 20
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    :cond_0
    const/16 v1, 0x20

    if-lt v2, v1, :cond_1

    .line 21
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V
    .locals 0

    const/16 p1, 0x1d

    iput p1, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V
    .locals 0

    const/16 p2, 0x15

    iput p2, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-void
.end method

.method public static createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, ".temp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "\\W+"

    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    rsub-int p2, p2, 0xf2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    const-string p2, "lottie_cache_"

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(IIIIZ)Landroidx/room/ObservedTableVersions;
    .locals 7

    new-instance v0, Landroidx/room/ObservedTableVersions;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    const/16 p1, 0xe

    invoke-direct {v0, p1, p0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Lcom/google/android/gms/common/internal/zzv;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "work_spec_id"

    const-string v7, "TEXT"

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v4, "work_spec_id"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const-string/jumbo v8, "prerequisite_id"

    const-string v9, "TEXT"

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v3, "prerequisite_id"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v7, "WorkSpec"

    const-string v8, "CASCADE"

    const-string v9, "CASCADE"

    invoke-direct/range {v6 .. v11}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const-string v14, "WorkSpec"

    const-string v15, "CASCADE"

    const-string v16, "CASCADE"

    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "ASC"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    const/4 v13, 0x0

    invoke-direct {v7, v11, v13, v8, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v7, v10, v13, v3, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v7, "Dependency"

    invoke-direct {v3, v7, v1, v5, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\n Found:\n"

    if-nez v5, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v17, "id"

    const-string v18, "TEXT"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string/jumbo v18, "state"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "worker_class_name"

    const-string v20, "TEXT"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v16

    const-string/jumbo v5, "worker_class_name"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string v17, "input_merger_class_name"

    const-string v18, "TEXT"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "input_merger_class_name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "input"

    const-string v19, "BLOB"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "input"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string v19, "output"

    const-string v20, "BLOB"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v16

    const-string v5, "output"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string v17, "initial_delay"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "initial_delay"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "interval_duration"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "interval_duration"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string v19, "flex_duration"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v16

    const-string v5, "flex_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "run_attempt_count"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v3, "run_attempt_count"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "backoff_policy"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "backoff_policy"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string v19, "backoff_delay_duration"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v16

    const-string v5, "backoff_delay_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const-string v19, "-1"

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string v17, "last_enqueue_time"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "last_enqueue_time"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "minimum_retention_duration"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "minimum_retention_duration"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "schedule_requested_at"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v16

    const-string/jumbo v7, "schedule_requested_at"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "run_in_foreground"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v5, "run_in_foreground"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "out_of_quota_policy"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "out_of_quota_policy"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const-string v21, "0"

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "period_count"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v16

    const-string/jumbo v8, "period_count"

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const-string v19, "0"

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string v17, "generation"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "generation"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const-string v20, "9223372036854775807"

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "next_schedule_time_override"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "next_schedule_time_override"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const-string v21, "0"

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string v19, "next_schedule_time_override_generation"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v8, v16

    const-string v10, "next_schedule_time_override_generation"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const-string v19, "-256"

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "stop_reason"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "stop_reason"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-string/jumbo v18, "trace_tag"

    const-string v19, "TEXT"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "trace_tag"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "required_network_type"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v8, v16

    const-string/jumbo v10, "required_network_type"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const-string/jumbo v19, "x\'\'"

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "required_network_request"

    const-string v18, "BLOB"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "required_network_request"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string/jumbo v18, "requires_charging"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "requires_charging"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "requires_device_idle"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v8, v16

    const-string/jumbo v10, "requires_device_idle"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "requires_battery_not_low"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "requires_battery_not_low"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string/jumbo v18, "requires_storage_not_low"

    const-string v19, "INTEGER"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "requires_storage_not_low"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "trigger_content_update_delay"

    const-string v20, "INTEGER"

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v8, v16

    const-string/jumbo v10, "trigger_content_update_delay"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    const/4 v15, 0x0

    const-string/jumbo v17, "trigger_max_content_delay"

    const-string v18, "INTEGER"

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v8, "trigger_max_content_delay"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v18, "content_uri_triggers"

    const-string v19, "BLOB"

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "content_uri_triggers"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v11, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v15, v13, v7, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "index_WorkSpec_last_enqueue_time"

    invoke-direct {v7, v14, v13, v3, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v7, "WorkSpec"

    invoke-direct {v3, v7, v1, v8, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    const-string/jumbo v17, "tag"

    const-string v18, "TEXT"

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v3, "tag"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x2

    const-string/jumbo v18, "work_spec_id"

    const-string v19, "TEXT"

    const/16 v21, 0x1

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkTag_work_spec_id"

    invoke-direct {v10, v15, v13, v11, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/room/util/TableInfo;

    const-string v11, "WorkTag"

    invoke-direct {v10, v11, v1, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    const-string/jumbo v17, "work_spec_id"

    const-string v18, "TEXT"

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const-string v20, "0"

    const/16 v17, 0x1

    const/16 v16, 0x2

    const-string v18, "generation"

    const-string v19, "INTEGER"

    const/16 v21, 0x1

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    const-string/jumbo v19, "system_id"

    const-string v20, "INTEGER"

    const/16 v22, 0x1

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v16

    const-string/jumbo v5, "system_id"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Landroidx/room/util/TableInfo;

    const-string v10, "SystemIdInfo"

    invoke-direct {v8, v10, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v10}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    const-string v17, "name"

    const-string v18, "TEXT"

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x2

    const-string/jumbo v18, "work_spec_id"

    const-string v19, "TEXT"

    const/16 v21, 0x1

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_WorkName_work_spec_id"

    invoke-direct {v8, v11, v13, v10, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/room/util/TableInfo;

    const-string v9, "WorkName"

    invoke-direct {v8, v9, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    const-string/jumbo v17, "work_spec_id"

    const-string v18, "TEXT"

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x0

    const-string/jumbo v18, "progress"

    const-string v19, "BLOB"

    const/16 v21, 0x1

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v3, "progress"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v8, "WorkProgress"

    invoke-direct {v5, v8, v1, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Landroidx/room/util/TableInfo$Column;

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    const-string v17, "key"

    const-string v18, "TEXT"

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "key"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x0

    const-string v18, "long_value"

    const-string v19, "INTEGER"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "long_value"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "Preference"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static pathStringToNodes$default(Landroidx/room/ObservedTableVersions;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v3, v5, :cond_1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v5, v3, :cond_43

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/lit8 v9, v5, 0x20

    add-int/lit8 v10, v9, -0x61

    add-int/lit8 v11, v9, -0x7a

    mul-int/2addr v11, v10

    const/16 v10, 0x65

    if-gtz v11, :cond_2

    if-eq v9, v10, :cond_2

    goto :goto_4

    :cond_2
    if-lt v8, v3, :cond_42

    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_41

    or-int/lit8 v9, v5, 0x20

    const/16 v12, 0x7a

    if-eq v9, v12, :cond_3a

    const/4 v7, 0x0

    :goto_5
    if-ge v8, v3, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    const-wide v14, 0xffffffffL

    const/high16 v9, 0x7fc00000    # Float.NaN

    if-ne v8, v3, :cond_4

    move v12, v6

    move/from16 v16, v7

    int-to-long v6, v8

    shl-long/2addr v6, v12

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v6, v8

    move/from16 v32, v5

    move/from16 v19, v12

    :goto_6
    move-wide/from16 v21, v14

    const/16 v20, 0x1

    goto/16 :goto_27

    :cond_4
    move v12, v6

    move/from16 v16, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_5

    const/16 v17, 0x1

    :goto_7
    move/from16 v18, v9

    goto :goto_8

    :cond_5
    const/16 v17, 0x0

    goto :goto_7

    :goto_8
    const/16 v9, 0x2e

    move/from16 v19, v12

    const/16 v12, 0xa

    if-eqz v17, :cond_8

    add-int/lit8 v6, v8, 0x1

    if-ne v6, v3, :cond_6

    int-to-long v6, v6

    shl-long v6, v6, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v6, v8

    move/from16 v32, v5

    goto :goto_6

    :cond_6
    const/16 v20, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-wide/from16 v21, v14

    add-int/lit8 v14, v13, -0x30

    int-to-char v14, v14

    if-ge v14, v12, :cond_7

    goto :goto_a

    :cond_7
    if-eq v13, v9, :cond_9

    int-to-long v6, v6

    shl-long v6, v6, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    :goto_9
    and-long v8, v8, v21

    or-long/2addr v6, v8

    move/from16 v32, v5

    goto/16 :goto_27

    :cond_8
    move-wide/from16 v21, v14

    const/16 v20, 0x1

    move v13, v6

    move v6, v8

    :cond_9
    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    const-wide/16 v23, 0x0

    move v15, v6

    move-wide/from16 v25, v23

    :goto_b
    const-wide/16 v27, 0xa

    if-eq v15, v3, :cond_b

    add-int/lit8 v11, v13, -0x30

    int-to-char v4, v11

    if-ge v4, v12, :cond_b

    mul-long v25, v25, v27

    move v4, v8

    int-to-long v7, v11

    add-long v25, v25, v7

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v14, :cond_a

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v13, v7

    goto :goto_c

    :cond_a
    const/4 v13, 0x0

    :goto_c
    move v8, v4

    const/16 v7, 0x2d

    goto :goto_b

    :cond_b
    move v4, v8

    sub-int v7, v15, v6

    if-eq v15, v3, :cond_12

    if-ne v13, v9, :cond_12

    add-int/lit8 v13, v15, 0x1

    move v8, v13

    const/16 v31, 0x10

    :goto_d
    sub-int v9, v3, v8

    const/16 v33, 0x30

    const/4 v11, 0x4

    if-lt v9, v11, :cond_d

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-long v10, v9

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v35, v13

    int-to-long v12, v9

    shl-long v12, v12, v31

    or-long v9, v10, v12

    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v11, v11

    shl-long v11, v11, v19

    or-long/2addr v9, v11

    add-int/lit8 v11, v8, 0x3

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v11, v11

    shl-long v11, v11, v33

    or-long/2addr v9, v11

    const-wide v11, 0x30003000300030L

    sub-long v11, v9, v11

    const-wide v36, 0x46004600460046L    # 2.447700077935472E-307

    add-long v9, v9, v36

    or-long/2addr v9, v11

    const-wide v36, -0x7f007f007f0080L

    and-long v9, v9, v36

    cmp-long v9, v9, v23

    if-eqz v9, :cond_c

    const/4 v9, -0x1

    goto :goto_e

    :cond_c
    const-wide v9, 0x3e80064000a0001L

    mul-long/2addr v11, v9

    ushr-long v9, v11, v33

    long-to-int v9, v9

    :goto_e
    if-ltz v9, :cond_e

    const-wide/16 v10, 0x2710

    mul-long v25, v25, v10

    int-to-long v9, v9

    add-long v25, v25, v9

    add-int/lit8 v8, v8, 0x4

    move/from16 v13, v35

    const/16 v10, 0x65

    const/16 v12, 0xa

    goto :goto_d

    :cond_d
    move/from16 v35, v13

    :cond_e
    if-ge v8, v14, :cond_f

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    :cond_f
    const/4 v9, 0x0

    :goto_f
    move v13, v9

    :goto_10
    if-eq v8, v3, :cond_11

    add-int/lit8 v9, v13, -0x30

    int-to-char v10, v9

    const/16 v11, 0xa

    if-ge v10, v11, :cond_11

    mul-long v25, v25, v27

    int-to-long v9, v9

    add-long v25, v25, v9

    add-int/lit8 v8, v8, 0x1

    if-ge v8, v14, :cond_10

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    :cond_10
    const/4 v13, 0x0

    goto :goto_10

    :cond_11
    sub-int v9, v35, v8

    sub-int/2addr v7, v9

    move v10, v9

    move/from16 v9, v35

    goto :goto_11

    :cond_12
    const/16 v31, 0x10

    const/16 v33, 0x30

    move v8, v15

    move v9, v8

    const/4 v10, 0x0

    :goto_11
    if-nez v7, :cond_13

    int-to-long v6, v8

    shl-long v6, v6, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    goto/16 :goto_9

    :cond_13
    or-int/lit8 v11, v13, 0x20

    const/16 v13, 0x65

    if-ne v11, v13, :cond_1d

    add-int/lit8 v11, v8, 0x1

    if-ge v11, v14, :cond_14

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v13, v18

    :goto_12
    const/16 v12, 0x2d

    goto :goto_13

    :cond_14
    const/4 v13, 0x0

    goto :goto_12

    :goto_13
    if-ne v13, v12, :cond_15

    move/from16 v12, v20

    goto :goto_14

    :cond_15
    const/4 v12, 0x0

    :goto_14
    move/from16 v30, v4

    if-nez v12, :cond_16

    const/16 v4, 0x2b

    if-ne v13, v4, :cond_17

    :cond_16
    add-int/lit8 v11, v8, 0x2

    :cond_17
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v13, 0x0

    :goto_15
    if-eq v11, v3, :cond_1a

    add-int/lit8 v4, v4, -0x30

    move/from16 v35, v10

    int-to-char v10, v4

    move/from16 v36, v4

    const/16 v4, 0xa

    if-ge v10, v4, :cond_1b

    const/16 v10, 0x400

    if-ge v13, v10, :cond_18

    mul-int/lit8 v13, v13, 0xa

    add-int v13, v13, v36

    :cond_18
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v14, :cond_19

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_16

    :cond_19
    const/4 v10, 0x0

    :goto_16
    move v4, v10

    move/from16 v10, v35

    goto :goto_15

    :cond_1a
    move/from16 v35, v10

    :cond_1b
    if-eqz v12, :cond_1c

    neg-int v4, v13

    goto :goto_17

    :cond_1c
    move v4, v13

    :goto_17
    add-int v10, v35, v4

    goto :goto_18

    :cond_1d
    move/from16 v30, v4

    move/from16 v35, v10

    move v11, v8

    const/4 v4, 0x0

    :goto_18
    const/16 v12, 0x13

    if-le v7, v12, :cond_28

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v34, v6

    :goto_19
    if-eq v11, v3, :cond_22

    move/from16 v12, v33

    if-eq v13, v12, :cond_1e

    const/16 v12, 0x2e

    if-ne v13, v12, :cond_1f

    :cond_1e
    const/16 v12, 0x30

    goto :goto_1a

    :cond_1f
    const/16 v12, 0x13

    goto :goto_1c

    :goto_1a
    if-ne v13, v12, :cond_20

    add-int/lit8 v7, v7, -0x1

    :cond_20
    add-int/lit8 v12, v34, 0x1

    if-ge v12, v14, :cond_21

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_1b

    :cond_21
    const/4 v13, 0x0

    :goto_1b
    move/from16 v34, v12

    const/16 v12, 0x13

    const/16 v33, 0x30

    goto :goto_19

    :cond_22
    :goto_1c
    if-le v7, v12, :cond_28

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v34, v4

    move/from16 v32, v5

    move-wide/from16 v12, v23

    :goto_1d
    const-wide v4, 0xde0b6b3a7640000L

    if-eq v6, v15, :cond_24

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v10

    if-gez v10, :cond_24

    mul-long v12, v12, v27

    const/16 v33, 0x30

    add-int/lit8 v7, v7, -0x30

    int-to-long v4, v7

    add-long/2addr v12, v4

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v14, :cond_23

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v7, v4

    goto :goto_1d

    :cond_23
    const/4 v7, 0x0

    goto :goto_1d

    :cond_24
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-ltz v7, :cond_25

    sub-int/2addr v15, v6

    add-int v10, v15, v34

    :goto_1e
    move/from16 v4, v20

    goto :goto_21

    :cond_25
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v9

    :goto_1f
    if-eq v7, v8, :cond_27

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v10

    if-gez v10, :cond_27

    mul-long v12, v12, v27

    const/16 v33, 0x30

    add-int/lit8 v6, v6, -0x30

    int-to-long v4, v6

    add-long/2addr v12, v4

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v14, :cond_26

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v6, v4

    goto :goto_20

    :cond_26
    const/4 v6, 0x0

    :goto_20
    const-wide v4, 0xde0b6b3a7640000L

    goto :goto_1f

    :cond_27
    sub-int/2addr v9, v7

    add-int v10, v9, v34

    goto :goto_1e

    :cond_28
    move/from16 v32, v5

    move-wide/from16 v12, v25

    const/4 v4, 0x0

    :goto_21
    const/16 v5, -0xa

    if-gt v5, v10, :cond_2b

    const/16 v5, 0xb

    if-ge v10, v5, :cond_2b

    if-nez v4, :cond_2b

    const-wide/32 v4, 0x1000000

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gtz v4, :cond_2b

    long-to-float v4, v12

    sget-object v5, Landroidx/compose/ui/graphics/vector/PathParserKt;->PowersOfTen:[F

    if-gez v10, :cond_29

    neg-int v6, v10

    aget v5, v5, v6

    div-float/2addr v4, v5

    goto :goto_22

    :cond_29
    aget v5, v5, v10

    mul-float/2addr v4, v5

    :goto_22
    if-eqz v17, :cond_2a

    neg-float v4, v4

    :cond_2a
    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    :goto_23
    int-to-long v7, v4

    and-long v7, v7, v21

    or-long v6, v5, v7

    goto/16 :goto_27

    :cond_2b
    cmp-long v4, v12, v23

    if-nez v4, :cond_2d

    if-eqz v17, :cond_2c

    const/high16 v4, -0x80000000

    goto :goto_24

    :cond_2c
    const/4 v4, 0x0

    :goto_24
    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    goto :goto_23

    :cond_2d
    const/16 v4, -0x7e

    const-string/jumbo v5, "substring(...)"

    if-gt v4, v10, :cond_34

    const/16 v4, 0x80

    if-ge v10, v4, :cond_34

    add-int/lit16 v4, v10, 0x145

    sget-object v6, Landroidx/compose/ui/graphics/vector/PathParserKt;->Mantissa64:[J

    aget-wide v6, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    shl-long v8, v12, v4

    and-long v12, v8, v21

    ushr-long v8, v8, v19

    and-long v14, v6, v21

    ushr-long v6, v6, v19

    mul-long v25, v8, v6

    mul-long/2addr v6, v12

    mul-long/2addr v8, v14

    mul-long/2addr v12, v14

    ushr-long v12, v12, v19

    add-long/2addr v8, v12

    and-long v12, v6, v21

    add-long/2addr v8, v12

    ushr-long v8, v8, v19

    add-long v25, v25, v8

    ushr-long v6, v6, v19

    add-long v25, v25, v6

    const/16 v6, 0x3f

    ushr-long v7, v25, v6

    long-to-int v7, v7

    add-int/lit8 v8, v7, 0x9

    ushr-long v8, v25, v8

    xor-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    const-wide/16 v12, 0x1ff

    and-long v14, v25, v12

    cmp-long v7, v14, v12

    if-eqz v7, :cond_2e

    cmp-long v7, v14, v23

    const-wide/16 v12, 0x1

    if-nez v7, :cond_2f

    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    cmp-long v7, v14, v12

    if-nez v7, :cond_2f

    :cond_2e
    move/from16 v4, v30

    goto :goto_26

    :cond_2f
    add-long/2addr v8, v12

    ushr-long v7, v8, v20

    const-wide/high16 v14, 0x20000000000000L

    cmp-long v9, v7, v14

    if-ltz v9, :cond_30

    add-int/lit8 v4, v4, -0x1

    const-wide/high16 v7, 0x10000000000000L

    :cond_30
    const-wide v14, -0x10000000000001L

    and-long/2addr v7, v14

    const-wide/32 v14, 0x3526a

    int-to-long v9, v10

    mul-long/2addr v9, v14

    shr-long v9, v9, v31

    const/16 v14, 0x400

    int-to-long v14, v14

    add-long/2addr v9, v14

    int-to-long v14, v6

    add-long/2addr v9, v14

    int-to-long v14, v4

    sub-long/2addr v9, v14

    cmp-long v4, v9, v12

    if-ltz v4, :cond_31

    const-wide/16 v12, 0x7fe

    cmp-long v4, v9, v12

    if-lez v4, :cond_32

    :cond_31
    move/from16 v4, v30

    goto :goto_25

    :cond_32
    const/16 v4, 0x34

    shl-long v4, v9, v4

    or-long/2addr v4, v7

    if-eqz v17, :cond_33

    const-wide/high16 v23, -0x8000000000000000L

    :cond_33
    or-long v4, v4, v23

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    goto/16 :goto_23

    :goto_25
    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    goto/16 :goto_23

    :goto_26
    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    goto/16 :goto_23

    :cond_34
    move/from16 v4, v30

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    int-to-long v5, v11

    shl-long v5, v5, v19

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    goto/16 :goto_23

    :goto_27
    ushr-long v4, v6, v19

    long-to-int v4, v4

    and-long v5, v6, v21

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_36

    iget-object v6, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v6, [F

    add-int/lit8 v7, v16, 0x1

    aput v5, v6, v16

    array-length v8, v6

    if-lt v7, v8, :cond_35

    mul-int/lit8 v8, v7, 0x2

    new-array v8, v8, [F

    iput-object v8, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    array-length v9, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35
    move v8, v4

    goto :goto_28

    :cond_36
    move v8, v4

    move/from16 v7, v16

    :goto_28
    if-ge v8, v3, :cond_37

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_37

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_37
    if-ge v8, v3, :cond_39

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_29

    :cond_38
    move/from16 v6, v19

    move/from16 v5, v32

    const/16 v10, 0x65

    goto/16 :goto_5

    :cond_39
    :goto_29
    move v5, v8

    goto :goto_2a

    :cond_3a
    move/from16 v32, v5

    move/from16 v19, v6

    const/16 v20, 0x1

    goto :goto_29

    :goto_2a
    iget-object v4, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v4, [F

    const/4 v6, 0x2

    sparse-switch v32, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown command for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, v32

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    add-int/lit8 v6, v7, -0x1

    const/4 v8, 0x0

    :goto_2b
    if-gt v8, v6, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v10, v4, v8

    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :sswitch_1
    add-int/lit8 v6, v7, -0x2

    const/4 v8, 0x0

    :goto_2c
    if-gt v8, v6, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, v4, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x2

    goto :goto_2c

    :sswitch_2
    add-int/lit8 v6, v7, -0x4

    const/4 v8, 0x0

    :goto_2d
    if-gt v8, v6, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    aget v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, v4, v11

    add-int/lit8 v12, v8, 0x2

    aget v12, v4, v12

    add-int/lit8 v13, v8, 0x3

    aget v13, v4, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x4

    goto :goto_2d

    :sswitch_3
    add-int/lit8 v6, v7, -0x4

    const/4 v8, 0x0

    :goto_2e
    if-gt v8, v6, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    aget v10, v4, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, v4, v11

    add-int/lit8 v12, v8, 0x2

    aget v12, v4, v12

    add-int/lit8 v13, v8, 0x3

    aget v13, v4, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x4

    goto :goto_2e

    :sswitch_4
    add-int/lit8 v8, v7, -0x2

    if-ltz v8, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    const/16 v29, 0x0

    aget v10, v4, v29

    aget v11, v4, v20

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    if-gt v6, v8, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v10, v4, v6

    add-int/lit8 v11, v6, 0x1

    aget v11, v4, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x2

    goto :goto_2f

    :sswitch_5
    add-int/lit8 v6, v7, -0x2

    const/4 v10, 0x0

    :goto_30
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v4, v10

    add-int/lit8 v11, v10, 0x1

    aget v11, v4, v11

    invoke-direct {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_30

    :sswitch_6
    add-int/lit8 v6, v7, -0x1

    const/4 v10, 0x0

    :goto_31
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v9, v4, v10

    invoke-direct {v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :sswitch_7
    add-int/lit8 v6, v7, -0x6

    const/4 v10, 0x0

    :goto_32
    if-gt v10, v6, :cond_3d

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    aget v12, v4, v10

    add-int/lit8 v8, v10, 0x1

    aget v13, v4, v8

    add-int/lit8 v8, v10, 0x2

    aget v14, v4, v8

    add-int/lit8 v8, v10, 0x3

    aget v15, v4, v8

    add-int/lit8 v8, v10, 0x4

    aget v16, v4, v8

    add-int/lit8 v8, v10, 0x5

    aget v17, v4, v8

    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_32

    :sswitch_8
    add-int/lit8 v6, v7, -0x7

    const/4 v10, 0x0

    :goto_33
    if-gt v10, v6, :cond_3d

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    aget v12, v4, v10

    add-int/lit8 v8, v10, 0x1

    aget v13, v4, v8

    add-int/lit8 v8, v10, 0x2

    aget v14, v4, v8

    add-int/lit8 v8, v10, 0x3

    aget v8, v4, v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_3b

    move/from16 v15, v20

    goto :goto_34

    :cond_3b
    const/4 v15, 0x0

    :goto_34
    add-int/lit8 v8, v10, 0x4

    aget v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_3c

    move/from16 v16, v20

    goto :goto_35

    :cond_3c
    const/16 v16, 0x0

    :goto_35
    add-int/lit8 v8, v10, 0x5

    aget v17, v4, v8

    add-int/lit8 v8, v10, 0x6

    aget v18, v4, v8

    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    goto :goto_33

    :sswitch_9
    sget-object v4, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    const/16 v29, 0x0

    goto/16 :goto_41

    :sswitch_a
    add-int/lit8 v6, v7, -0x1

    const/4 v10, 0x0

    :goto_36
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v9, v4, v10

    invoke-direct {v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    :sswitch_b
    add-int/lit8 v6, v7, -0x2

    const/4 v10, 0x0

    :goto_37
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v9, v4, v10

    add-int/lit8 v11, v10, 0x1

    aget v11, v4, v11

    invoke-direct {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_37

    :sswitch_c
    add-int/lit8 v6, v7, -0x4

    const/4 v10, 0x0

    :goto_38
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    aget v9, v4, v10

    add-int/lit8 v11, v10, 0x1

    aget v11, v4, v11

    add-int/lit8 v12, v10, 0x2

    aget v12, v4, v12

    add-int/lit8 v13, v10, 0x3

    aget v13, v4, v13

    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_38

    :sswitch_d
    add-int/lit8 v6, v7, -0x4

    const/4 v10, 0x0

    :goto_39
    if-gt v10, v6, :cond_3d

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    aget v9, v4, v10

    add-int/lit8 v11, v10, 0x1

    aget v11, v4, v11

    add-int/lit8 v12, v10, 0x2

    aget v12, v4, v12

    add-int/lit8 v13, v10, 0x3

    aget v13, v4, v13

    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_39

    :sswitch_e
    add-int/lit8 v8, v7, -0x2

    if-ltz v8, :cond_3d

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/16 v29, 0x0

    aget v10, v4, v29

    aget v11, v4, v20

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3a
    if-gt v6, v8, :cond_40

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v10, v4, v6

    add-int/lit8 v11, v6, 0x1

    aget v11, v4, v11

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x2

    goto :goto_3a

    :sswitch_f
    const/16 v29, 0x0

    add-int/lit8 v6, v7, -0x2

    move/from16 v10, v29

    :goto_3b
    if-gt v10, v6, :cond_40

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v4, v10

    add-int/lit8 v11, v10, 0x1

    aget v11, v4, v11

    invoke-direct {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_3b

    :sswitch_10
    const/16 v29, 0x0

    add-int/lit8 v6, v7, -0x1

    move/from16 v10, v29

    :goto_3c
    if-gt v10, v6, :cond_40

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v9, v4, v10

    invoke-direct {v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    :sswitch_11
    const/16 v29, 0x0

    add-int/lit8 v6, v7, -0x6

    move/from16 v10, v29

    :goto_3d
    if-gt v10, v6, :cond_40

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    aget v12, v4, v10

    add-int/lit8 v8, v10, 0x1

    aget v13, v4, v8

    add-int/lit8 v8, v10, 0x2

    aget v14, v4, v8

    add-int/lit8 v8, v10, 0x3

    aget v15, v4, v8

    add-int/lit8 v8, v10, 0x4

    aget v16, v4, v8

    add-int/lit8 v8, v10, 0x5

    aget v17, v4, v8

    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_3d

    :sswitch_12
    const/16 v29, 0x0

    add-int/lit8 v6, v7, -0x7

    move/from16 v10, v29

    :goto_3e
    if-gt v10, v6, :cond_40

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    aget v12, v4, v10

    add-int/lit8 v8, v10, 0x1

    aget v13, v4, v8

    add-int/lit8 v8, v10, 0x2

    aget v14, v4, v8

    add-int/lit8 v8, v10, 0x3

    aget v8, v4, v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_3e

    move/from16 v15, v20

    goto :goto_3f

    :cond_3e
    move/from16 v15, v29

    :goto_3f
    add-int/lit8 v8, v10, 0x4

    aget v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_3f

    move/from16 v16, v20

    goto :goto_40

    :cond_3f
    move/from16 v16, v29

    :goto_40
    add-int/lit8 v8, v10, 0x5

    aget v17, v4, v8

    add-int/lit8 v8, v10, 0x6

    aget v18, v4, v8

    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    goto :goto_3e

    :cond_40
    :goto_41
    move/from16 v6, v19

    goto/16 :goto_2

    :cond_41
    move v5, v8

    goto/16 :goto_2

    :cond_42
    move v5, v8

    goto/16 :goto_3

    :cond_43
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zar;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zar;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/base/zac;->$r8$clinit:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/base/zaa;->zac(Landroid/os/Parcel;I)V

    return-void
.end method

.method public approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Float;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-static {v0, p3, v1}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p3

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-object v2, p3

    move-object p3, p0

    move-object p0, p1

    move p1, p2

    move-object p2, v2

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    return-object p0
.end method

.method public buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 7

    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    const-string/jumbo v2, "und"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_1

    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/room/ObservedTableVersions;->buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v1, v3

    :cond_4
    move-object p0, v1

    :cond_5
    return-object p0
.end method

.method public buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    iget v1, p1, Landroidx/media3/common/Format;->roleFlags:I

    iget p1, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const v1, 0x7f1201c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f1201cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const v2, 0x7f1201cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    const p1, 0x7f1201ca

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public collect(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    instance-of v0, p2, Landroidx/room/ObservedTableVersions$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/room/ObservedTableVersions$collect$1;

    iget v1, v0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/ObservedTableVersions$collect$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/ObservedTableVersions$collect$1;-><init>(Landroidx/room/ObservedTableVersions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/room/ObservedTableVersions$collect$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    iput v2, v0, Landroidx/room/ObservedTableVersions$collect$1;->label:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-void
.end method

.method public execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;)V
    .locals 2

    check-cast p1, Landroidx/work/multiprocess/IWorkManagerImpl;

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;-><init>(Landroidx/work/impl/WorkContinuationImpl;)V

    iput-object v1, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method public get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 12
    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/FloatAnimationSpec;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/room/ObservedTableVersions;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    const-string v1, "com.google.android.datatransport.events"

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0

    .line 4
    :pswitch_0
    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzs;

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    .line 6
    check-cast p0, Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const/16 v1, 0xc

    .line 8
    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    .line 9
    new-instance v1, Lcom/google/mlkit/common/internal/zzb;

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v2, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public getAbsVelocityThreshold()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroidx/room/ObservedTableVersions;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v2, v3}, Landroidx/room/ObservedTableVersions;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->parentDir()Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v1, v3}, Landroidx/room/ObservedTableVersions;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDurationNanos(F)J
    .locals 4

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide p0

    sget v0, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public getTargetValue(FF)F
    .locals 8

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {p0, p2}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    sget v2, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    iget v6, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v6, p0

    float-to-double v6, v6

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float p0, v0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method public getTrackName(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    iget-object v3, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v4, v1, Landroidx/media3/common/Format;->bitrate:I

    iget v5, v1, Landroidx/media3/common/Format;->channelCount:I

    iget v6, v1, Landroidx/media3/common/Format;->height:I

    iget v7, v1, Landroidx/media3/common/Format;->width:I

    iget-object v8, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-eq v3, v11, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x0

    const/4 v12, 0x0

    if-nez v8, :cond_2

    :cond_1
    move-object/from16 v16, v12

    goto :goto_1

    :cond_2
    invoke-static {v8}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    move v15, v3

    :goto_0
    if-ge v15, v14, :cond_1

    aget-object v16, v13, v15

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :goto_1
    if-eqz v16, :cond_5

    :cond_4
    :goto_2
    move v3, v9

    goto :goto_6

    :cond_5
    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v8}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    :goto_3
    if-ge v3, v13, :cond_8

    aget-object v14, v8, v3

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v12, v14

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v12, :cond_a

    :cond_9
    :goto_5
    move v3, v10

    goto :goto_6

    :cond_a
    if-ne v7, v11, :cond_4

    if-eq v6, v11, :cond_b

    goto :goto_2

    :cond_b
    if-ne v5, v11, :cond_9

    iget v3, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v3, v11, :cond_c

    goto :goto_5

    :cond_c
    move v3, v11

    :goto_6
    const v8, 0x49742400    # 1000000.0f

    const v12, 0x7f1201c6

    const-string v13, ""

    if-ne v3, v9, :cond_10

    invoke-virtual/range {p0 .. p1}, Landroidx/room/ObservedTableVersions;->buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    if-eq v7, v11, :cond_e

    if-ne v6, v11, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f1201c8

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_e
    :goto_7
    move-object v5, v13

    :goto_8
    if-ne v4, v11, :cond_f

    goto :goto_9

    :cond_f
    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_9
    filled-new-array {v3, v5, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_10
    if-ne v3, v10, :cond_18

    invoke-virtual/range {p0 .. p1}, Landroidx/room/ObservedTableVersions;->buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v11, :cond_16

    if-ge v5, v10, :cond_11

    goto :goto_a

    :cond_11
    if-eq v5, v10, :cond_15

    if-eq v5, v9, :cond_14

    const/4 v6, 0x6

    if-eq v5, v6, :cond_13

    const/4 v6, 0x7

    if-eq v5, v6, :cond_13

    const/16 v6, 0x8

    if-eq v5, v6, :cond_12

    const v5, 0x7f1201d1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_12
    const v5, 0x7f1201d3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_13
    const v5, 0x7f1201d2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_14
    const v5, 0x7f1201d0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_15
    const v5, 0x7f1201c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_16
    :goto_a
    move-object v5, v13

    :goto_b
    if-ne v4, v11, :cond_17

    goto :goto_c

    :cond_17
    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_c
    filled-new-array {v3, v5, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/room/ObservedTableVersions;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroidx/room/ObservedTableVersions;->buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    return-object v0

    :cond_19
    iget-object v0, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    const v1, 0x7f1201d5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_e
    const v0, 0x7f1201d4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueFromNanos(FFJ)F
    .locals 4

    const-wide/32 v0, 0xf4240

    div-long/2addr p3, v0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {p0, p2}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object p0

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    long-to-float p2, p3

    long-to-float p3, v0

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    iget p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p3

    invoke-static {p2}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p2

    iget p2, p2, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->distanceCoefficient:F

    mul-float/2addr p0, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public getVelocityFromNanos(FJ)F
    .locals 4

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object p0

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    long-to-float p1, p2

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p1

    iget p1, p1, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->velocityCoefficient:F

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p1

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr p2, p0

    long-to-float p0, v0

    div-float/2addr p2, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p0

    return p2
.end method

.method public increment(Ljava/util/Set;)V
    .locals 6

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [I

    array-length v2, v1

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    aget v5, v1, v4

    :goto_1
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    return-void
.end method

.method public invoke-0d7_KjU()J
    .locals 2

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/RippleNodeFactory;

    iget-wide v0, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    return-wide v0
.end method

.method public varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Resources;

    const v5, 0x7f1201c5

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    :cond_0
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v12

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v9, v6, v8}, Landroidx/appcompat/widget/ViewUtils$Api29Impl;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v10

    if-nez v10, :cond_1

    move v11, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v11

    :goto_0
    if-nez v10, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v10

    :goto_1
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v12, v8, :cond_4

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v12, v9, :cond_4

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v12, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    :goto_2
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v7

    :goto_3
    if-lez v8, :cond_5

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_5

    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v12, 0x33

    const/4 v13, -0x1

    invoke-direct {v8, v13, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v10, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v9, v10, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v9, v12, :cond_6

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v9, v11, :cond_6

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v9, v10, :cond_7

    :cond_6
    iput v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move v7, v5

    :goto_5
    if-eqz v7, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v9

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_9

    const v9, 0x7f060006

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_6

    :cond_9
    const v9, 0x7f060005

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_6
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-nez v1, :cond_b

    if-eqz v7, :cond_b

    move v2, v5

    :cond_b
    move v1, v7

    move v7, v6

    goto :goto_7

    :cond_c
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_d

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v5

    goto :goto_7

    :cond_d
    move v1, v5

    move v7, v1

    :goto_7
    if-eqz v7, :cond_f

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_e
    move v1, v5

    :cond_f
    :goto_8
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz p0, :cond_11

    if-eqz v1, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eq v0, v2, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result p0

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    new-instance v3, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p0, v2, v0, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    goto :goto_9

    :cond_12
    move-object/from16 v4, p2

    move-object p0, v4

    :goto_9
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/google/android/gms/tasks/zzs;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$2;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/google/android/gms/tasks/zza;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zza;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method

.method public parentDir()Ljava/io/File;
    .locals 2

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public perform(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_0
    return v0
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 5

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "image/bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "image/webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "image/heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "image/heic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_0

    :sswitch_6
    const-string v1, "image/avif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p0, 0x1a

    if-lt p1, p0, :cond_8

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x22

    if-lt p1, p0, :cond_8

    :goto_1
    :pswitch_2
    invoke-static {v2, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0

    :cond_8
    :goto_2
    invoke-static {v3, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0

    :cond_9
    :goto_3
    invoke-static {v0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Landroidx/room/ObservedTableVersions;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->parentDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p0
.end method
