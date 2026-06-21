.class public final Lcom/google/android/gms/common/api/internal/zacv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public zaa:Ljava/lang/Object;

.field public zaa$1:Ljava/lang/Object;

.field public zab:Z

.field public zac:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    iput p4, p0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroidx/lifecycle/LiveData$1;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/internal/zacv;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/RemoteCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkArgument(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacv;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    iget v3, p0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zacv;-><init>(Lcom/google/android/gms/common/api/internal/zacv;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public continueSettlingToState(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LiveData$1;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
