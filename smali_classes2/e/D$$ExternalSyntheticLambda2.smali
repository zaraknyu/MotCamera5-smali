.class public final synthetic Le/D$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/D$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Le/D$$ExternalSyntheticLambda2;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v2, p0, Le/D$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v1

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const-string v0, "com.adobe.scan.android"

    :try_start_0
    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadAdobeDialog"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v1

    :pswitch_1
    check-cast p0, Lh/q;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$resumeSavedSessionState$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$resumeSavedSessionState$1$1;-><init>(Lh/q;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v4, v4, v3, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v1

    :pswitch_2
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v2, Le/D;

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Le/D;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iput-wide v4, v2, Le/D;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
