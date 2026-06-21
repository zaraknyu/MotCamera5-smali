.class public final Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 3

    iget p0, p0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/content/Intent;

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :pswitch_0
    check-cast p2, [Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(ACTION_REQUEST_PE\u2026EXTRA_PERMISSIONS, input)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    check-cast p2, Landroidx/activity/result/PickVisualMediaRequest;

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.provider.action.PICK_IMAGES"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    instance-of p2, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$SingleMimeType;

    if-eqz p2, :cond_0

    const-string p1, "image/*"

    goto :goto_0

    :cond_0
    instance-of p1, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.provider.extra.PICK_IMAGES_LAUNCH_TAB"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_2
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    new-instance p0, Landroid/content/Intent;

    const-string p1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroidx/activity/result/IntentSenderRequest;->fillInIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string v0, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Landroidx/activity/result/IntentSenderRequest;->intentSender:Landroid/content/IntentSender;

    iget v0, p2, Landroidx/activity/result/IntentSenderRequest;->flagsValues:I

    iget p2, p2, Landroidx/activity/result/IntentSenderRequest;->flagsMask:I

    new-instance v1, Landroidx/activity/result/IntentSenderRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2, v0}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    move-object p2, v1

    :cond_2
    const-string p1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CreateIntent created the following intent: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/firebase/components/Component$$Lambda$2;
    .locals 5

    iget v0, p0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/firebase/components/Component$$Lambda$2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p2, [Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/firebase/components/Component$$Lambda$2;

    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {p0, p1}, Lcom/google/firebase/components/Component$$Lambda$2;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "permission must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    array-length p0, p2

    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p0

    const/16 p1, 0x10

    if-ge p0, p1, :cond_4

    move p0, p1

    :cond_4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p0, p2

    :goto_1
    if-ge v0, p0, :cond_5

    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/google/firebase/components/Component$$Lambda$2;

    invoke-direct {p0, p1}, Lcom/google/firebase/components/Component$$Lambda$2;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object p0

    :pswitch_1
    check-cast p2, Landroidx/activity/result/PickVisualMediaRequest;

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    return-object p0

    :pswitch_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :goto_3
    return-object p0

    :pswitch_1
    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne p2, p0, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/net/Uri;

    :cond_b
    return-object v0

    :pswitch_2
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
