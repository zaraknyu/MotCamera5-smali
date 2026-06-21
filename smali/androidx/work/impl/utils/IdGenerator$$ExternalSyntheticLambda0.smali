.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/service/JmsServiceInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMS(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    const-string v1, "next_alarm_manager_id"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    new-instance v3, Landroidx/work/impl/model/Preference;

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
