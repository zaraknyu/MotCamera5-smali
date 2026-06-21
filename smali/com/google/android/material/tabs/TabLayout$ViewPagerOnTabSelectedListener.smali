.class public final Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final viewPager:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
