.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

.field public static final zza$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;-><init>(I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, [B

    return-object p1

    :pswitch_0
    check-cast p1, [B

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/graphics/drawable/DrawableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/util/Preconditions;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzky;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/math/MathUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/os/BundleKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/uuid/UuidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/impl/model/WorkTypeConverters;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/time/DurationKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/text/UStringsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwa;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/IntRectKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/ts/MpeghUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/impl/WorkerUpdater;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/impl/model/WorkSpec$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/impl/WorkDatabasePathHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/DBUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/SQLiteConnectionUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/RelationUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzms;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/MigrationUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zztr;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/transition/FragmentTransitionSupport$1;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/tracing/Trace;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/transition/ViewUtilsApi19;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;

    const-class v0, Landroidx/webkit/WebViewFeature;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/webkit/internal/WebViewGlueCommunicator;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzni;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzni;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/window/core/SpecificationComputer;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/Data$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/ConfigurationKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/sqlite/SQLite;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/concurrent/futures/ListenableFutureKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/savedstate/SavedStateReader;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzna;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzna;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/TableInfoKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/impl/model/WorkSpecKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/airbnb/lottie/parser/AnimatableValueParser;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzot;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzot;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/PainterResources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/reflect/jvm/internal/impl/storage/StorageKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/ColorResources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzja;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/Resources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/PrimitiveResources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/StringResources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/res/VectorResources_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpi;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/text/CharsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/RoundRectKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzis;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzis;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/SizeKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzit;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzit;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlinx/coroutines/channels/ActorKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfo;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhv;

    const-class v0, Landroidx/compose/foundation/text/TextDelegateKt;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzia;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/runtime/changelist/OperationKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzib;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgp;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzie;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzif;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzif;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/RectKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/OffsetKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/runtime/saveable/ListSaverKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzig;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzih;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzih;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/autofill/ContentType_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzii;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzii;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/runtime/saveable/RememberSaveableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzij;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzij;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/common/util/DeviceProperties;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoa;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoa;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/airbnb/lottie/utils/GammaEvaluator;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/common/api/internal/TaskUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzld;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzld;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/signin/zaa;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/arcsoft/imageengine/metadata/ArcSoftMetadataEngine;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzke;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzke;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzak;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/datatransport/cct/StringMerger;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzy;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzov;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzov;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzu;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzow;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzow;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzou;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzou;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/multiprocess/RemoteClientUtilsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/window/AndroidDialog_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/content/ContextCompat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/TextUnitKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/concurrent/futures/CallbackToFutureAdapter;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzko;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/IntOffsetKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlinx/coroutines/channels/ChannelsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlinx/coroutines/channels/ProduceKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    const-class v0, Lkotlinx/coroutines/channels/ChannelKt;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlinx/coroutines/intrinsics/CancellableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/view/MotionEventCompat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/lazy/LazyListKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/airbnb/lottie/L;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzos;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzos;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/airbnb/lottie/compose/LottieAnimationKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzor;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzor;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/text/StringsKt__AppendableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/text/RegexKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/text/HexFormatKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzss;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/text/LegacySubtitleUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/text/ClickableTextKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/ts/TsUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/ui/SubtitleViewUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/extractor/wav/WavHeaderReader;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/ui/HtmlUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/XMPUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/multiprocess/parcelable/ParcelConverters;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/SQLiteStatementUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/TableInfo$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/SchemaInfoUtilKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/StringUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/util/MathHelpersKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/runtime/collection/ScopeMap;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzic;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzic;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgm;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzid;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    const-class v0, Landroidx/compose/ui/unit/VelocityKt;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/IntSizeKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/room/util/CursorUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zztc;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/material/ripple/Ripple_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/lifecycle/compose/LifecycleEffectKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/common/FileTypes;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/pager/PagerMeasureKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzho;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzho;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/reflect/jvm/internal/impl/load/java/UtilsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/exifinterface/media/ExifInterfaceUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzls;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzls;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/fragment/app/FragmentAnim;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/pager/PagerKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/common/MediaItem$DrmConfiguration;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/common/text/SpanUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/media3/datasource/BitmapUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzso;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/text/BasicTextKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/foundation/pager/PagerScrollPositionKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzut;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzur;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/content/PermissionChecker;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/graphics/PathParser;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/graphics/BitmapCompat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzks;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/graphics/drawable/DrawableCompat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzku;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzku;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/ListenableFutureKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/Operation$State;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/draganddrop/DragAndDrop_androidKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzim;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzim;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/ISO8601Converter;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;

    const-class v0, Landroidx/window/core/Version$Companion;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/window/reflection/ReflectionUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/reflect/jvm/internal/impl/name/FqNamesUtilKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzik;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzik;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/multiprocess/RemoteExecuteKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/databinding/adapters/TextViewBindingAdapter;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/customview/widget/FocusStrategy;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzln;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzln;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/customview/poolingcontainer/PoolingContainer;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/customview/widget/ViewDragHelper$Callback;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/databinding/BaseObservable;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/viewtree/ViewTree;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzll;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/view/WindowInsetsCompat$Type;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrx;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/DpKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsp;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsr;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/DensityKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/unit/DpSize;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzum;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/OperationKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/ParseRDF;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/WorkManager;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzns;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/work/WorkContinuation;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/Latin1Converter;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/GeometryUtilsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzio;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzio;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Landroidx/compose/ui/geometry/CornerRadius;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzip;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/adobe/internal/xmp/impl/ParameterAsserts;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlinx/coroutines/intrinsics/UndispatchedKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
