.class public final synthetic Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Ljava/util/Map$Entry;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
