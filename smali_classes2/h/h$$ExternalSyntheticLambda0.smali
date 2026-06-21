.class public final synthetic Lh/h$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lh/h;


# direct methods
.method public synthetic constructor <init>(Lh/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h$$ExternalSyntheticLambda0;->f$0:Lh/h;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget-object p0, p0, Lh/h$$ExternalSyntheticLambda0;->f$0:Lh/h;

    iget-object p0, p0, Lh/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "pdfContentUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v0, :cond_1

    const-string v2, "filename"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    if-eqz v0, :cond_2

    const-string v3, "persistentUniqueId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    const-string v4, "processedImageUris"

    const-class v5, Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    goto :goto_3

    :cond_3
    move-object v0, p1

    :goto_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_4
    if-nez p1, :cond_5

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_5
    new-instance v0, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/adobe/scan/sdk/ScanAppConnection$Result$Canceled;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_4
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
