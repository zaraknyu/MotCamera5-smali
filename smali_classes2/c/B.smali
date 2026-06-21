.class public final Lc/B;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/G;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/B;->$r8$classId:I

    iput-object p1, p0, Lc/B;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lh/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc/B;->$r8$classId:I

    sget-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->None:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    iput-object p1, p0, Lc/B;->a:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, v0}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Le/A0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc/B;->$r8$classId:I

    iput-object p2, p0, Lc/B;->a:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lc/B;->$r8$classId:I

    iget-object p0, p0, Lc/B;->a:Ljava/lang/Object;

    const-string v1, "property"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    check-cast p3, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    check-cast p2, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    if-eq p2, p3, :cond_0

    check-cast p0, Lh/d;

    iget-object p0, p0, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iget-object p0, p0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;->onBoundaryStateChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p0, Le/A0;

    iget-object p0, p0, Le/A0;->d:Le/s0;

    if-eqz p0, :cond_1

    iget p2, p0, Le/s0;->b:I

    if-eq p2, p1, :cond_1

    sget-object p1, Le/A0;->f:Le/p0;

    iget-object p1, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p0, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;

    :try_start_0
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :pswitch_1
    check-cast p3, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    check-cast p0, Lc/G;

    iget-object p0, p0, Lc/G;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
