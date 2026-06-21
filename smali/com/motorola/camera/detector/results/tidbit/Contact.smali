.class public final Lcom/motorola/camera/detector/results/tidbit/Contact;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;
.source "SourceFile"


# instance fields
.field public addressTypes:[Ljava/lang/String;

.field public addresses:[Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public emailTypes:[Ljava/lang/String;

.field public emails:[Ljava/lang/String;

.field public geo:[Ljava/lang/String;

.field public instantMessenger:Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public nicknames:[Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public org:Ljava/lang/String;

.field public phoneNumbers:[Ljava/lang/String;

.field public phoneTypes:[Ljava/lang/String;

.field public pronunciation:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public urls:[Ljava/lang/String;


# direct methods
.method public static getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne p1, v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "smsto"

    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "tel"

    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static validArray([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static vcardEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "\\,;"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "\\r\\n|\\r|\\n"

    const-string v1, "\\\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "finishActivityOnSaveCompleted"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_0

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "name"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "WORK"

    const-string v9, "HOME"

    const-string v10, "CELL"

    const-string v14, "data2"

    const/16 v16, 0x0

    const-string v6, "data1"

    const-string v11, "mimetype"

    if-eqz v7, :cond_9

    move/from16 v7, v16

    :goto_2
    iget-object v12, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    const/16 v17, 0x3

    array-length v15, v12

    if-ge v7, v15, :cond_a

    aget-object v12, v12, v7

    iget-object v15, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v15}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v13, v15

    if-ge v7, v13, :cond_7

    aget-object v13, v15, v7

    if-nez v13, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_3
    const/4 v13, -0x1

    goto :goto_4

    :sswitch_0
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v13, 0x2

    goto :goto_4

    :sswitch_1
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    move v13, v4

    goto :goto_4

    :sswitch_2
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v13, v16

    :goto_4
    packed-switch v13, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/4 v13, 0x2

    goto :goto_6

    :pswitch_1
    move v13, v4

    goto :goto_6

    :pswitch_2
    const/4 v13, 0x4

    goto :goto_6

    :cond_7
    :goto_5
    move/from16 v13, v17

    :goto_6
    invoke-static {v12}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_7

    :cond_8
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v15, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/16 v17, 0x3

    :cond_a
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move/from16 v4, v16

    :goto_8
    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v12, v7

    if-ge v4, v12, :cond_12

    aget-object v7, v7, v4

    iget-object v12, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    invoke-static {v12}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x7

    if-eqz v12, :cond_10

    iget-object v12, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    array-length v15, v12

    if-ge v4, v15, :cond_10

    aget-object v12, v12, v4

    if-nez v12, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_9
    const/4 v12, -0x1

    goto :goto_a

    :sswitch_3
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v12, v17

    goto :goto_a

    :sswitch_4
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_9

    :cond_d
    const/4 v12, 0x2

    goto :goto_a

    :sswitch_5
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_9

    :cond_e
    const/4 v12, 0x1

    goto :goto_a

    :sswitch_6
    const-string v15, "FAX"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v12, v16

    :goto_a
    packed-switch v12, :pswitch_data_1

    goto :goto_b

    :pswitch_3
    move/from16 v13, v17

    goto :goto_b

    :pswitch_4
    const/4 v13, 0x1

    goto :goto_b

    :pswitch_5
    const/4 v13, 0x2

    goto :goto_b

    :pswitch_6
    const/4 v13, 0x4

    :cond_10
    :goto_b
    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_c

    :cond_11
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_12
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v4, v16

    :goto_d
    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_15

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_e

    :cond_13
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v9, v8

    if-ge v4, v9, :cond_14

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v8, v8, v4

    const-string v9, "data3"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "im_handle"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_16
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "company"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_17
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "job_title"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_18
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "notes"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_19
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v7, v4

    move/from16 v8, v16

    :goto_f
    if-ge v8, v7, :cond_1b

    aget-object v9, v4, v8

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "vnd.android.cursor.item/website"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1b
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v4, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_1d
    const/4 v3, 0x0

    if-eqz v5, :cond_1e

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v4, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_10

    :cond_1e
    move-object v4, v3

    :goto_10
    if-eqz v4, :cond_1f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ": "

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v2, v2, v16

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_13

    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v5, v16

    :goto_11
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_24

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v7, v7, v16

    const-string v8, "mailto"

    invoke-static {v8, v7, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v7, v7, v16

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.extra.EMAIL"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v5, v8, :cond_22

    aget-object v7, v7, v5

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_22
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_24
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v5, v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    goto :goto_14

    :cond_25
    :goto_13
    move-object v5, v3

    :goto_14
    if-eqz v5, :cond_26

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    move-result-object v2

    goto :goto_15

    :cond_28
    move-object v2, v3

    :goto_15
    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f120069

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_2b

    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v2, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_16

    :cond_2b
    move-object v6, v3

    :goto_16
    if-eqz v6, :cond_2c

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_2d

    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2d

    aget-object v2, v2, v16

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v2, v2, v18

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v0, v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto/16 :goto_19

    :cond_2d
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v6, v16

    :goto_17
    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v7, v3

    if-ge v6, v7, :cond_30

    aget-object v3, v3, v6

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "geo:0,0?q="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_2e

    aget-object v7, v7, v6

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_30
    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    :cond_31
    :goto_19
    if-eqz v3, :cond_32

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1f8162 -> :sswitch_2
        0x21ecdf -> :sswitch_1
        0x28bf11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x10efd -> :sswitch_6
        0x1f8162 -> :sswitch_5
        0x21ecdf -> :sswitch_4
        0x28bf11 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final getCopyString(Z)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f120085

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v0, p1, v4, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f120086

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v0, p1, v4, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120088

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    invoke-static {v0, p1, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const v5, 0x7f12009a

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length p1, p1

    new-array v6, p1, [Ljava/lang/String;

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v9, :cond_1

    array-length v10, v9

    if-ge v7, v10, :cond_1

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v10, v10, v7

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v4

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7f120099

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length p1, p1

    new-array v6, p1, [Ljava/lang/String;

    move v7, v3

    :goto_2
    if-ge v7, p1, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v9, :cond_4

    array-length v10, v9

    if-ge v7, v10, :cond_4

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v10, v10, v7

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v4

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const p1, 0x7f12008d

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const p1, 0x7f120084

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {v0, p1, v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120087

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v0, p1, v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length p1, p1

    new-array v6, p1, [Ljava/lang/String;

    move v7, v3

    :goto_4
    if-ge v7, p1, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v9, :cond_7

    array-length v10, v9

    if-ge v7, v10, :cond_7

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v10, v10, v7

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_7
    move-object v9, v4

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    const p1, 0x7f120081

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\n"

    invoke-static {v0, p1, v6, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const p1, 0x7f120083

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v0, p1, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120089

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v0, p1, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120082

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v0, p1, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f12008a

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v0, p1, v4, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120096

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    invoke-static {v0, p1, p0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v3, p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v2, v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    if-eqz v2, :cond_4

    array-length v2, v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v2, v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    if-eqz v2, :cond_b

    array-length v2, v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    if-eqz p0, :cond_c

    array-length v1, p0

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_f

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "vcard.vcf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "BEGIN:VCARD\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "VERSION:3.0\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ";"

    const/4 v5, 0x0

    const-string v6, "\r\n"

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v9, v8

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_d

    :cond_3
    :goto_1
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "N:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NICKNAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, ":"

    if-eqz v3, :cond_c

    move v3, v5

    :goto_5
    :try_start_3
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_c

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v9, :cond_b

    array-length v10, v9

    if-ge v3, v10, :cond_b

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v5

    :goto_7
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_f

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_8

    :cond_d
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v9, :cond_e

    array-length v10, v9

    if-ge v3, v10, :cond_e

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v5

    :goto_9
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_12

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_a

    :cond_10
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v9, :cond_11

    array-length v10, v9

    if-ge v3, v10, :cond_11

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v7, v3

    move v8, v5

    :goto_b
    if-ge v8, v7, :cond_14

    aget-object v9, v3, v8

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_c

    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_14
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v3, :cond_15

    array-length v8, v3

    if-le v8, v7, :cond_15

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GEO:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v5, v8, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ORG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_16
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TITLE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_17
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BDAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_18
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_19
    const-string p0, "END:VCARD\r\n"

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/x-vcard"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "com.motorola.camera5.FileProvider"

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_d

    :catch_0
    move-object v2, v1

    goto :goto_e

    :goto_d
    if-eqz v1, :cond_1a

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1a
    throw p0

    :catch_1
    :goto_e
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1b
    :goto_f
    return-object v1
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1200a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contact{names="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nicknames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pronunciation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', phoneNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instantMessenger=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', note=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", org=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', birthday=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
