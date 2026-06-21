.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    iget p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    const-string v2, "next_job_scheduler_id"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    :goto_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/Preference;

    int-to-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    if-ltz v1, :cond_3

    iget p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    if-gt v1, p0, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    new-instance v0, Landroidx/work/impl/model/Preference;

    const/4 v1, 0x1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
