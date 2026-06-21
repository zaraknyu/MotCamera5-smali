.class public final synthetic Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
