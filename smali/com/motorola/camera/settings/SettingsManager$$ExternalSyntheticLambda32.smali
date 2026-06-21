.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/hardware/camera2/params/Face;

    check-cast p1, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCurrentFsmJobs:Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->$r8$lambda$lGeSrXk0ZDLqCdDVewnHfPoobo8(Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
