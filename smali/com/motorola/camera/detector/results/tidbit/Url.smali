.class public final Lcom/motorola/camera/detector/results/tidbit/Url;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;
.source "SourceFile"


# static fields
.field public static mFormat:Lcom/google/zxing/BarcodeFormat;


# instance fields
.field public final synthetic $r8$classId:I

.field public url:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_1
    const-string v0, "lpa"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 9

    iget v0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/client/result/GeoParsedResult;

    iget-object v2, v1, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/Url;->getDetailsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/Url;->mFormat:Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v2, :cond_7

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v2, "query"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "query"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_2

    :cond_9
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_b

    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_3

    :cond_b
    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.mobiledesktop.rdp_qrcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "BARCODE_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.google.android.gms"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {p0, v2, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->FIDO:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {p0, v2, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_5

    :cond_11
    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :goto_6
    if-eqz v3, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u200e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-virtual {p0}, Lcom/google/zxing/client/result/GeoParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x200e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0

    :pswitch_2
    const-string p0, ""

    return-object p0

    :pswitch_3
    const-string p0, ""

    return-object p0

    :pswitch_4
    const-string p0, ""

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldsCount()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getFieldsCount()I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/client/result/GeoParsedResult;

    iget-wide v0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    :goto_3
    return p0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_4

    :cond_5
    const/4 p0, 0x1

    :goto_4
    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_5

    :cond_6
    const/4 p0, 0x1

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getIcon()I

    move-result p0

    return p0

    :pswitch_0
    const p0, 0x7f080259

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Location:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Text:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Product:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoRdpConnection:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Fido:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Url:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1203d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1203d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geo { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-virtual {p0}, Lcom/google/zxing/client/result/GeoParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text{text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "\', locale=null}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Product{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotoRdpConnection{mData=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleMatter{mData=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Url{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
