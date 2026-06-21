.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

.field public static final zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

.field public static final synthetic zza$2:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

.field public static final synthetic zza$3:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$2:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$3:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;-><init>(I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;
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

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->$r8$classId:I

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

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzep;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzep;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzer;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzer;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/camerax_extensions/IqConfigManager;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/cli/util/LidStateHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzes;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzes;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/Geographic;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/DumpUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzim;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/CtaPermissionHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/zxing/oned/OneDReader;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/mode/ModeChangeHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/jvm/JvmClassMappingKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzij;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzee;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/arcsoft/ArcsoftSolarTimeCalculator;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzea;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/saving/XmpUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/fsm/camera/DnDHandler;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzey;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/jdk7/AutoCloseableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/fsm/camera/FsmContextHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzez;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/shared/SystemSetting;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/thumbnail/factory/DecoderFactory;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/thumbnail/MediaUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjv;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/controls_2020/BindingUtilsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzki;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzga;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzga;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzex;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgd;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzge;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzge;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkn;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzit;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzem;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/ArraysKt__ArraysJVMKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/primitives/Ints;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/math/LongMath;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/math/IntMath;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzda;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/math/MathPreconditions;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/primitives/Longs;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzde;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzde;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/firebase/components/CycleDetector;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/firebase/components/Preconditions;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/gson/JsonParser;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/base/Ascii;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/base/Preconditions;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/base/Objects;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzir;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzek;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzek;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/MotoFeedbackHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzds;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzar;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/arch/view/BaseViewModel;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzg;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzf;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzav;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzby;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzby;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzau;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzci;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzci;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/motion/MotionUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/shape/CornerTreatment;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/resources/TypefaceUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/play/core/splitcompat/zzd;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzct;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzct;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzco;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzco;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/shape/MaterialShapeUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/textfield/IconHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/textfield/EditTextUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/enums/EnumEntriesKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzew;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzew;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/builders/ListBuilderKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzev;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/MapsKt__MapWithDefaultKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzec;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzec;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/internal/ProgressionUtilKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/SetsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzei;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/io/FilesKt__FilePathComponentsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/io/CloseableKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/io/ByteStreamsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkv;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzej;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzej;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzen;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzen;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/math/DoubleUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzef;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzel;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/arcsoft/ArcsoftLocationUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/QuickLaunchShortcutHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/SensorTime;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;

    const-class v0, Lcom/motorola/camera/QuickLaunch;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/SkinToneDetection;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjd;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzet;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzap;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/ResultKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/collections/AbstractList$Companion;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/UnsignedKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/common/base/Strings;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/photos/vision/barhopper/zzg;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/photos/vision/barhopper/zze;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzji;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/mcfmanagers/McfRoiManager;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzax;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzca;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzca;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/settings/ModeSettingsHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzff;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/shared/DeviceProperties;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/settings/PictureSizeHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/settings/SettingsFactory;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/color/MaterialColors;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzce;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzce;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/tasks/Tasks;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/tools/myui/ctadialog/CommonUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkw;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/ExceptionsKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lkotlin/LazyKt__LazyJVMKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/thumbnail/wrapper/DecoderWrapper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/compose/ThemeKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzft;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzck;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzck;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/resources/MaterialResources;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzed;

    const-class v0, Lcom/motorola/camera/background/common/Utils;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/shared/MotSysTrace;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/shared/ReceiverUtil;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/motorola/camera/shared/NotificationHelper;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/math/MathUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/material/drawable/DrawableUtils;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzch;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzch;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
