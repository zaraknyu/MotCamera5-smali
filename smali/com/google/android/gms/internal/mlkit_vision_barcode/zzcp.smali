.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:I

.field public zzc:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    .line 5
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarContextView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    invoke-static {v0, p0}, Landroidx/appcompat/widget/ActionBarContextView;->access$101(Landroidx/appcompat/widget/ActionBarContextView;I)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->access$001(Landroidx/appcompat/widget/ActionBarContextView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    return-void
.end method

.method public record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {p2, v0, p0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    return-void
.end method

.method public record(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public zza$com$google$android$gms$internal$mlkit_vision_barcode$zzcl(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    aput-object p1, v0, v1

    return-void
.end method

.method public zzd(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int v1, p1, p1

    :cond_0
    if-gez v1, :cond_1

    const v1, 0x7fffffff

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    :cond_3
    return-void
.end method

.method public zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method
