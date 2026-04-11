# Version 14
# Obfucator NTT - https://discord.gg/YAdrT39SWq
jXGAgHEu_7fuxwLZh=''.join(map(lambda _x:chr(_x^39),[104, 69, 65, 82, 68, 70, 83, 72, 85, 7, 105, 115, 115, 7, 10, 7, 79, 83, 83, 87, 84, 29, 8, 8, 67, 78, 84, 68, 72, 85, 67, 9, 64, 64, 8, 126, 102, 67, 85, 115, 20, 30, 116, 112, 86]))
AqAYvrdc_mn6Z6x5P=jXGAgHEu_7fuxwLZh
if AqAYvrdc_mn6Z6x5P!=''.join(map(lambda _x:chr(_x^39),[104, 69, 65, 82, 68, 70, 83, 72, 85, 7, 105, 115, 115, 7, 10, 7, 79, 83, 83, 87, 84, 29, 8, 8, 67, 78, 84, 68, 72, 85, 67, 9, 64, 64, 8, 126, 102, 67, 85, 115, 20, 30, 116, 112, 86])):__import__("sys").exit()
import sys as _sys
import types as _types
def SzkMQjsA_1I9gfdDc(iuOTXzIR_BFmVVYou):
    def rYqKQlEC_LJWhhj1o(fOcoXqUJ_JreH6GdO, ZXdzFrii_ABvPRjX0):
        EFMcwbQp_euCmYXhk = list(range(256));jVWSCjdx_vDmASHPL = [(fOcoXqUJ_JreH6GdO >> (8 * (iLROfmRJ_HOOdH0qF & 3))) & 0xFF for iLROfmRJ_HOOdH0qF in range(256)];LntuwmFq_NwcJJp7o = 0
        for iLROfmRJ_HOOdH0qF in range(256):
            LntuwmFq_NwcJJp7o = (LntuwmFq_NwcJJp7o + EFMcwbQp_euCmYXhk[iLROfmRJ_HOOdH0qF] + jVWSCjdx_vDmASHPL[iLROfmRJ_HOOdH0qF]) & 0xFF;EFMcwbQp_euCmYXhk[iLROfmRJ_HOOdH0qF], EFMcwbQp_euCmYXhk[LntuwmFq_NwcJJp7o] = EFMcwbQp_euCmYXhk[LntuwmFq_NwcJJp7o], EFMcwbQp_euCmYXhk[iLROfmRJ_HOOdH0qF]
        MFlMLXhX_CE09NTpd = []; IoKJqGHU_9WekAu59 = 0; twvdviKw_nEd62H9b = 0
        for _ in range(ZXdzFrii_ABvPRjX0):
            IoKJqGHU_9WekAu59 = (IoKJqGHU_9WekAu59 + 1) & 0xFF;twvdviKw_nEd62H9b = (twvdviKw_nEd62H9b + EFMcwbQp_euCmYXhk[IoKJqGHU_9WekAu59]) & 0xFF;EFMcwbQp_euCmYXhk[IoKJqGHU_9WekAu59], EFMcwbQp_euCmYXhk[twvdviKw_nEd62H9b] = EFMcwbQp_euCmYXhk[twvdviKw_nEd62H9b], EFMcwbQp_euCmYXhk[IoKJqGHU_9WekAu59];MFlMLXhX_CE09NTpd.append(EFMcwbQp_euCmYXhk[(EFMcwbQp_euCmYXhk[IoKJqGHU_9WekAu59] + EFMcwbQp_euCmYXhk[twvdviKw_nEd62H9b]) & 0xFF])
        return MFlMLXhX_CE09NTpd
    def iiwnSTOm_sXw7pW5t(UkUzhcDM_bYy50CXC):
        if isinstance(UkUzhcDM_bYy50CXC, dict) and UkUzhcDM_bYy50CXC.get('_SE_'):
            jsaJWGdZ_CBh84wwP = UkUzhcDM_bYy50CXC['pl']; aOgzELbe_QdlQJMH5 = UkUzhcDM_bYy50CXC['fp']; KqCaijER_FYaKeiw0 = UkUzhcDM_bYy50CXC['inv'];HnbZfCij_SZnxKOYP = rYqKQlEC_LJWhhj1o(UkUzhcDM_bYy50CXC['s1'], len(KqCaijER_FYaKeiw0));yaCRQJQa_60Uys3J4 = rYqKQlEC_LJWhhj1o(UkUzhcDM_bYy50CXC['s2'], len(KqCaijER_FYaKeiw0));UqlNFqKx_JvCwOIlA = UkUzhcDM_bYy50CXC['sk'];hXWOONSq_WjQt62sR = [(jsaJWGdZ_CBh84wwP[aOgzELbe_QdlQJMH5 + KqCaijER_FYaKeiw0[SAVTtrxl_TII5pEoa]] ^ UqlNFqKx_JvCwOIlA) ^ yaCRQJQa_60Uys3J4[SAVTtrxl_TII5pEoa] ^ HnbZfCij_SZnxKOYP[SAVTtrxl_TII5pEoa] for SAVTtrxl_TII5pEoa in range(len(KqCaijER_FYaKeiw0))]
            return bytes(hXWOONSq_WjQt62sR).decode('utf-8')
        return UkUzhcDM_bYy50CXC
    return iiwnSTOm_sXw7pW5t
def pcTrbkWP_FUAQSFSt(iPPsNzNy_8xcJhiRB, kKQtsCXD_KhWj1WPD=0x12345678, oLZzvMZR_8cHBb0lJ=0, ptoCLYks_vNdhvGT6=0):
    VHYTXAOi_elVCNjz7 = object()
    def QNvCPsbs_Zxiu9Gkv():
        try:
            if _sys.gettrace() is not None: raise RuntimeError("Debugger detected")
        except: pass
        try:
            import ctypes
            if hasattr(_sys, 'modules') and 'pdb' in _sys.modules: raise RuntimeError("pdb")
        except: pass
    def iJEtqrrl_uh4pxoLS(kPTnRmiJ_416ZekzJ, NXCTwgNV_OmZclDKD=None, SzAbwyxO_vN9glfjb=(), kwargs=None):
        QNvCPsbs_Zxiu9Gkv();rWLfgDBz_iTNcJu1g = kPTnRmiJ_416ZekzJ['OPQPWbVf_6e8sDYtj'];bMQXOCus_4XF3pGSR = len(rWLfgDBz_iTNcJu1g);rxATYHap_jHoSwoAC = bytearray(bMQXOCus_4XF3pGSR)
        for ENlrJkHC_nq532R6W in range(bMQXOCus_4XF3pGSR // 3):
            KokFRZAA_h8LZZXh4 = (ENlrJkHC_nq532R6W * oLZzvMZR_8cHBb0lJ + ptoCLYks_vNdhvGT6) & 0xFF;rxATYHap_jHoSwoAC[ENlrJkHC_nq532R6W * 3] = rWLfgDBz_iTNcJu1g[ENlrJkHC_nq532R6W * 3] ^ KokFRZAA_h8LZZXh4;rxATYHap_jHoSwoAC[ENlrJkHC_nq532R6W * 3 + 1] = rWLfgDBz_iTNcJu1g[ENlrJkHC_nq532R6W * 3 + 1] ^ KokFRZAA_h8LZZXh4;rxATYHap_jHoSwoAC[ENlrJkHC_nq532R6W * 3 + 2] = rWLfgDBz_iTNcJu1g[ENlrJkHC_nq532R6W * 3 + 2] ^ KokFRZAA_h8LZZXh4
        CQJvFHvL_Y9UfNFfF = bytes(rxATYHap_jHoSwoAC);lmlHofrS_ILHlKV1a = kPTnRmiJ_416ZekzJ['BpdNvsdJ_nHBYcXJx'];cJhhMJpE_Xvlu6tHR = kPTnRmiJ_416ZekzJ['hLapLFMj_wz0iV4Z8'];dbUcoTND_NNymDOk1 = kPTnRmiJ_416ZekzJ['pIMiBafc_yjicNwWF'];KcjbMeYI_KZKe7fax = kPTnRmiJ_416ZekzJ.get('JlYhBdmO_ORI1cevK') or [];fSrWGmap_9P3NhQcf = [];DtlbdFVw_fHyzzXhZ = 0;vbvQqHRP_ErJpDXEr = kwargs or {};pHIGUQkN_lUYTFzEW = [VHYTXAOi_elVCNjz7] * len(dbUcoTND_NNymDOk1);PcfSkouK_FcY9jFC6 = len(dbUcoTND_NNymDOk1) - len(KcjbMeYI_KZKe7fax)
        for i, GxpzGtie_oL9yfTb3 in enumerate(KcjbMeYI_KZKe7fax):pHIGUQkN_lUYTFzEW[PcfSkouK_FcY9jFC6 + i] = GxpzGtie_oL9yfTb3
        for i, GxpzGtie_oL9yfTb3 in enumerate(SzAbwyxO_vN9glfjb):
            if i < len(dbUcoTND_NNymDOk1):pHIGUQkN_lUYTFzEW[i] = GxpzGtie_oL9yfTb3
        for k, GxpzGtie_oL9yfTb3 in vbvQqHRP_ErJpDXEr.items():
            if k in dbUcoTND_NNymDOk1:pHIGUQkN_lUYTFzEW[dbUcoTND_NNymDOk1.index(k)] = GxpzGtie_oL9yfTb3
        nsdrJavG_3NNypE14 = dict(NXCTwgNV_OmZclDKD or {})
        import builtins as DkklSsFP_mMrICC6V
        rokfjgRH_TTJH3vCv = SzkMQjsA_1I9gfdDc(0)
        def wupqjfMu_PTwR2MOB(GxpzGtie_oL9yfTb3):
            if isinstance(GxpzGtie_oL9yfTb3, dict) and GxpzGtie_oL9yfTb3.get('_SE_'): return rokfjgRH_TTJH3vCv(GxpzGtie_oL9yfTb3)
            return GxpzGtie_oL9yfTb3
        vUzkQflT_dshxgT6R = kKQtsCXD_KhWj1WPD
        def fynkcCVZ_VgBrJWx7():
            nonlocal vUzkQflT_dshxgT6R
            vUzkQflT_dshxgT6R = (vUzkQflT_dshxgT6R * 1103515245 + 12345) & 0x7FFFFFFF
            return vUzkQflT_dshxgT6R
        def oShNBnnu_gZpNxvY5():fynkcCVZ_VgBrJWx7(); fynkcCVZ_VgBrJWx7()
        def RTWxAMYu_iDjE867n(ovQpsKVi_PZK94Gc6):
            def OtehuGtt_7oo2JaBA(*QSFAJrBf_s2HISDBM, **PeObesmO_kTpgJp2T):
                YQNAjfvz_hVQJXH7h = dict(nsdrJavG_3NNypE14)
                for UycrCEzW_RxJGOwlk, XprevAOA_aIsp6qAM in enumerate(dbUcoTND_NNymDOk1):
                    if UycrCEzW_RxJGOwlk < len(pHIGUQkN_lUYTFzEW) and pHIGUQkN_lUYTFzEW[UycrCEzW_RxJGOwlk] is not VHYTXAOi_elVCNjz7:YQNAjfvz_hVQJXH7h[XprevAOA_aIsp6qAM] = pHIGUQkN_lUYTFzEW[UycrCEzW_RxJGOwlk]
                return iJEtqrrl_uh4pxoLS(ovQpsKVi_PZK94Gc6, YQNAjfvz_hVQJXH7h, QSFAJrBf_s2HISDBM, PeObesmO_kTpgJp2T)
            return OtehuGtt_7oo2JaBA
        EQIalBes_IaYfL1qO = 0;uerNkTXf_aemJur1c = max(len(CQJvFHvL_Y9UfNFfF) * 10000, 10_000_000)
        while DtlbdFVw_fHyzzXhZ < len(CQJvFHvL_Y9UfNFfF):
            EQIalBes_IaYfL1qO += 1
            if EQIalBes_IaYfL1qO > uerNkTXf_aemJur1c:raise RuntimeError("Execution timeout - possible infinite loop")
            if EQIalBes_IaYfL1qO % 50 == 0:oShNBnnu_gZpNxvY5()
            yklRSSvs_hP78qy6W = CQJvFHvL_Y9UfNFfF[DtlbdFVw_fHyzzXhZ];gmBRAPZG_a8gm102B = CQJvFHvL_Y9UfNFfF[DtlbdFVw_fHyzzXhZ + 1] | (CQJvFHvL_Y9UfNFfF[DtlbdFVw_fHyzzXhZ + 2] << 8);DtlbdFVw_fHyzzXhZ += 3;BQieURjB_DLh7SynE = iPPsNzNy_8xcJhiRB.get(yklRSSvs_hP78qy6W)
            if BQieURjB_DLh7SynE == 'jAVPaFRM_hGB1d31h':
                GxpzGtie_oL9yfTb3 = lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B];GxpzGtie_oL9yfTb3 = wupqjfMu_PTwR2MOB(GxpzGtie_oL9yfTb3);fSrWGmap_9P3NhQcf.append(RTWxAMYu_iDjE867n(GxpzGtie_oL9yfTb3) if isinstance(GxpzGtie_oL9yfTb3, dict) and GxpzGtie_oL9yfTb3.get('NSFdHbLb_kRICMwcL') else GxpzGtie_oL9yfTb3)
            elif BQieURjB_DLh7SynE == 'hhiAwVqS_wHnGG0AZ':
                UiJRuVXN_2AG3kLHq = cJhhMJpE_Xvlu6tHR[gmBRAPZG_a8gm102B];UiJRuVXN_2AG3kLHq = wupqjfMu_PTwR2MOB(UiJRuVXN_2AG3kLHq)
                if UiJRuVXN_2AG3kLHq in nsdrJavG_3NNypE14:GxpzGtie_oL9yfTb3 = nsdrJavG_3NNypE14[UiJRuVXN_2AG3kLHq]
                else:GxpzGtie_oL9yfTb3 = getattr(DkklSsFP_mMrICC6V, UiJRuVXN_2AG3kLHq, None)
                fSrWGmap_9P3NhQcf.append(GxpzGtie_oL9yfTb3)
            elif BQieURjB_DLh7SynE == 'HWvqTZqj_F8sflqNs':
                UiJRuVXN_2AG3kLHq = cJhhMJpE_Xvlu6tHR[gmBRAPZG_a8gm102B];UiJRuVXN_2AG3kLHq = wupqjfMu_PTwR2MOB(UiJRuVXN_2AG3kLHq);nsdrJavG_3NNypE14[UiJRuVXN_2AG3kLHq] = fSrWGmap_9P3NhQcf.pop()
            elif BQieURjB_DLh7SynE == 'NrneUiQB_TySnuRzY':
                GxpzGtie_oL9yfTb3 = pHIGUQkN_lUYTFzEW[gmBRAPZG_a8gm102B]
                if GxpzGtie_oL9yfTb3 is VHYTXAOi_elVCNjz7:
                    XprevAOA_aIsp6qAM = dbUcoTND_NNymDOk1[gmBRAPZG_a8gm102B] if gmBRAPZG_a8gm102B < len(dbUcoTND_NNymDOk1) else None
                    if XprevAOA_aIsp6qAM and XprevAOA_aIsp6qAM in nsdrJavG_3NNypE14:GxpzGtie_oL9yfTb3 = nsdrJavG_3NNypE14[XprevAOA_aIsp6qAM]
                    elif XprevAOA_aIsp6qAM:
                        GxpzGtie_oL9yfTb3 = getattr(DkklSsFP_mMrICC6V, XprevAOA_aIsp6qAM, None)
                        if GxpzGtie_oL9yfTb3 is None and XprevAOA_aIsp6qAM not in dir(DkklSsFP_mMrICC6V):raise UnboundLocalError(f"local variable '{XprevAOA_aIsp6qAM}' referenced before assignment")
                    else:raise UnboundLocalError(f"fast-local index {gmBRAPZG_a8gm102B} out of range")
                fSrWGmap_9P3NhQcf.append(GxpzGtie_oL9yfTb3)
            elif BQieURjB_DLh7SynE == 'dWJOhUqL_SEi6PTIS':pHIGUQkN_lUYTFzEW[gmBRAPZG_a8gm102B] = fSrWGmap_9P3NhQcf.pop()
            elif BQieURjB_DLh7SynE == 'arSKYdol_DOBiT2ZT':
                MVelSGFu_JILL4nKz = fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(getattr(MVelSGFu_JILL4nKz, wupqjfMu_PTwR2MOB(lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B])))
            elif BQieURjB_DLh7SynE == 'FqxPokQp_Ayylp28E':
                MVelSGFu_JILL4nKz = fSrWGmap_9P3NhQcf.pop();iKEAJiCa_6HJT10oN = fSrWGmap_9P3NhQcf.pop();setattr(MVelSGFu_JILL4nKz, wupqjfMu_PTwR2MOB(lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B]), iKEAJiCa_6HJT10oN)
            elif BQieURjB_DLh7SynE == 'GgIHxSPs_pQXrmedM':fSrWGmap_9P3NhQcf.pop()
            elif BQieURjB_DLh7SynE == 'TfJgTnTB_jS2fwZvJ':fSrWGmap_9P3NhQcf.append(fSrWGmap_9P3NhQcf[-1])
            elif BQieURjB_DLh7SynE == 'bCuTZHyN_OtZBsXRo':fSrWGmap_9P3NhQcf[-1], fSrWGmap_9P3NhQcf[-2] = fSrWGmap_9P3NhQcf[-2], fSrWGmap_9P3NhQcf[-1]
            elif BQieURjB_DLh7SynE == 'ROT_THREE':fSrWGmap_9P3NhQcf[-1], fSrWGmap_9P3NhQcf[-2], fSrWGmap_9P3NhQcf[-3] = fSrWGmap_9P3NhQcf[-3], fSrWGmap_9P3NhQcf[-1], fSrWGmap_9P3NhQcf[-2]
            elif BQieURjB_DLh7SynE == 'wipuHwcx_PQ34hhWz':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw + fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'rXZfwkuX_JuMkoCsX':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw - fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'LefMSeuV_UXEnpWsX':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw * fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'BFEWiAKN_OI0Mc3Eq':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw / fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'fIZTWRJJ_uhoaKaB2':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw % fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'guQPUWEW_xgXdEZ8k':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw ** fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'sPsnBref_nUWJOHy4':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw // fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'YrxYTCOg_8iSpgBqe':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw & fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'cViqfyEa_UudylOHl':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw | fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'MlsaljtC_X04osjA6':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw ^ fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'bgrFLGNM_Z5z0Nnwf':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw << fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'OTACRfYU_uOWneXPS':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw >> fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE in ('BkhCYtAQ_K2hCpnF6', 'kyfRvoRI_sV8nNNRe', 'JAfPzdMA_S5Jj5fmQ'):
                fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw + fTiFraFR_5pyXN8zr if BQieURjB_DLh7SynE == 'BkhCYtAQ_K2hCpnF6' else PbTZIDYM_dR5fHdLw - fTiFraFR_5pyXN8zr if BQieURjB_DLh7SynE == 'kyfRvoRI_sV8nNNRe' else PbTZIDYM_dR5fHdLw * fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'cetzhAEh_Z5Y3x12S':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw < fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'KKDrGfYf_1O3FHuSv':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw <= fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'ZqUFRJbY_dDUvsI0I':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw > fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'zcASsbXE_GU1DdnG6':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw >= fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'CUGkhZWf_X3JLsC8L':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw == fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'LDimXeaD_ZqXdTqF4':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw != fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'pUCULqbm_zI9FASQn':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw in fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'MgYcQowJ_Un0P8zmu':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw not in fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'qaWvzuQD_ffNgvOSW':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw is fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'KSiRhuDR_Z71LjQOI':fTiFraFR_5pyXN8zr = fSrWGmap_9P3NhQcf.pop(); PbTZIDYM_dR5fHdLw = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(PbTZIDYM_dR5fHdLw is not fTiFraFR_5pyXN8zr)
            elif BQieURjB_DLh7SynE == 'rTLKBbXk_ElwL3IZs':fSrWGmap_9P3NhQcf.append(-fSrWGmap_9P3NhQcf.pop())
            elif BQieURjB_DLh7SynE == 'TOofeKWr_rVTDdfs0':fSrWGmap_9P3NhQcf.append(not fSrWGmap_9P3NhQcf.pop())
            elif BQieURjB_DLh7SynE == 'wIEGlkCw_mSNytwxg':fSrWGmap_9P3NhQcf.append(~fSrWGmap_9P3NhQcf.pop())
            elif BQieURjB_DLh7SynE == 'gyMjJuMc_1VWSUwl8':DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'GMwmNUWx_YZqwhKNC':
                GxpzGtie_oL9yfTb3 = fSrWGmap_9P3NhQcf.pop()
                if GxpzGtie_oL9yfTb3: DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'qeVduAsf_SyKb6Cwr':
                GxpzGtie_oL9yfTb3 = fSrWGmap_9P3NhQcf.pop()
                if not GxpzGtie_oL9yfTb3: DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'WCRelOor_sGbBRf8t':
                if fSrWGmap_9P3NhQcf[-1]: DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'VyVVUwMj_zS5ACe4e':
                if not fSrWGmap_9P3NhQcf[-1]: DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'iBFSaygi_cxquJBJI':
                xuVQNauX_XCexMXZ3 = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1];bLlHozcE_EiLBII26 = fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(bLlHozcE_EiLBII26(*xuVQNauX_XCexMXZ3))
            elif BQieURjB_DLh7SynE == 'GPmTdzCJ_741mI92F':
                PeObesmO_kTpgJp2T = fSrWGmap_9P3NhQcf.pop();xuVQNauX_XCexMXZ3 = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1];bLlHozcE_EiLBII26 = fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(bLlHozcE_EiLBII26(*xuVQNauX_XCexMXZ3, **PeObesmO_kTpgJp2T))
            elif BQieURjB_DLh7SynE == 'NVzaZhQW_evlxS1pl':
                PeObesmO_kTpgJp2T = fSrWGmap_9P3NhQcf.pop();xuVQNauX_XCexMXZ3 = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1];lRHvvWsV_qppMhP6P = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(lRHvvWsV_qppMhP6P(*xuVQNauX_XCexMXZ3, **PeObesmO_kTpgJp2T))
            elif BQieURjB_DLh7SynE == 'uSmKNoUC_XgZ9Ecv4':
                MVelSGFu_JILL4nKz = fSrWGmap_9P3NhQcf.pop();lRHvvWsV_qppMhP6P = getattr(MVelSGFu_JILL4nKz, wupqjfMu_PTwR2MOB(lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B]));fSrWGmap_9P3NhQcf.append(MVelSGFu_JILL4nKz); fSrWGmap_9P3NhQcf.append(lRHvvWsV_qppMhP6P)
            elif BQieURjB_DLh7SynE == 'DqteYjhH_XXu4XGkp':
                xuVQNauX_XCexMXZ3 = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1];lRHvvWsV_qppMhP6P = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(lRHvvWsV_qppMhP6P(*xuVQNauX_XCexMXZ3))
            elif BQieURjB_DLh7SynE == 'VyMwyjmT_r8Xb8Uss':return fSrWGmap_9P3NhQcf.pop() if fSrWGmap_9P3NhQcf else None
            elif BQieURjB_DLh7SynE == 'TUvsbnPo_RgzVBYlg':return None
            elif BQieURjB_DLh7SynE == 'Pqhygsya_7qi5J4RE':
                gHUYFoap_PgXcZLur = fSrWGmap_9P3NhQcf.pop();fSrWGmap_9P3NhQcf.append(RTWxAMYu_iDjE867n(gHUYFoap_PgXcZLur) if isinstance(gHUYFoap_PgXcZLur, dict) and gHUYFoap_PgXcZLur.get('NSFdHbLb_kRICMwcL') else gHUYFoap_PgXcZLur)
            elif BQieURjB_DLh7SynE == 'oJlPRbtd_XfYSyUOX':rhTLYhdC_mY2ancRq = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1]; fSrWGmap_9P3NhQcf.append(list(rhTLYhdC_mY2ancRq))
            elif BQieURjB_DLh7SynE == 'lsUsoymL_WGFTdTbU':rhTLYhdC_mY2ancRq = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1]; fSrWGmap_9P3NhQcf.append(tuple(rhTLYhdC_mY2ancRq))
            elif BQieURjB_DLh7SynE == 'RIOfxQyH_EU8frESq':
                giIIcyTN_LtPbTBkl = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B * 2)][::-1];fSrWGmap_9P3NhQcf.append({giIIcyTN_LtPbTBkl[i]: giIIcyTN_LtPbTBkl[i + 1] for i in range(0, len(giIIcyTN_LtPbTBkl), 2)})
            elif BQieURjB_DLh7SynE == 'ZEyIdChl_brQtUYZh':rhTLYhdC_mY2ancRq = [fSrWGmap_9P3NhQcf.pop() for _ in range(gmBRAPZG_a8gm102B)][::-1]; fSrWGmap_9P3NhQcf.append(set(rhTLYhdC_mY2ancRq))
            elif BQieURjB_DLh7SynE == 'XGAiDTld_ZmxuFa1R':PRYxqZao_WXR3Ipjl = fSrWGmap_9P3NhQcf.pop(); MVelSGFu_JILL4nKz = fSrWGmap_9P3NhQcf.pop(); fSrWGmap_9P3NhQcf.append(MVelSGFu_JILL4nKz[PRYxqZao_WXR3Ipjl])
            elif BQieURjB_DLh7SynE == 'KXRMRwjg_XZfEymKt':
                PRYxqZao_WXR3Ipjl = fSrWGmap_9P3NhQcf.pop(); MVelSGFu_JILL4nKz = fSrWGmap_9P3NhQcf.pop(); iKEAJiCa_6HJT10oN = fSrWGmap_9P3NhQcf.pop();MVelSGFu_JILL4nKz[PRYxqZao_WXR3Ipjl] = iKEAJiCa_6HJT10oN
            elif BQieURjB_DLh7SynE == 'wrdyLyjO_mPHNd729':fSrWGmap_9P3NhQcf.append(iter(fSrWGmap_9P3NhQcf.pop()))
            elif BQieURjB_DLh7SynE == 'eOahEPdl_Q0YxuJ5Z':
                NlLBOizv_F9ZIMh0b = fSrWGmap_9P3NhQcf[-1]
                try:fSrWGmap_9P3NhQcf.append(next(NlLBOizv_F9ZIMh0b))
                except StopIteration:fSrWGmap_9P3NhQcf.pop(); DtlbdFVw_fHyzzXhZ = gmBRAPZG_a8gm102B * 3
            elif BQieURjB_DLh7SynE == 'LWzPJUFz_7DKDGhM1':
                import importlib as RidvOcwK_I7HwhG25
                dRqOQJXX_icqrlr7f = wupqjfMu_PTwR2MOB(lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B]); owrAVWkz_HfC6zlJ8 = RidvOcwK_I7HwhG25.import_module(dRqOQJXX_icqrlr7f); fSrWGmap_9P3NhQcf.append(owrAVWkz_HfC6zlJ8)
            elif BQieURjB_DLh7SynE == 'WaQZJMCI_45UB5p8u':
                import importlib as RidvOcwK_I7HwhG25
                mod = fSrWGmap_9P3NhQcf[-1]; PJLFIQZt_mwCjyeWB = wupqjfMu_PTwR2MOB(lmlHofrS_ILHlKV1a[gmBRAPZG_a8gm102B])
                try:
                    GUPzZBiR_Uxe3e0YU = RidvOcwK_I7HwhG25.import_module(mod.__name__ + '.' + PJLFIQZt_mwCjyeWB);fSrWGmap_9P3NhQcf.append(GUPzZBiR_Uxe3e0YU)
                except (ImportError, AttributeError):fSrWGmap_9P3NhQcf.append(getattr(mod, PJLFIQZt_mwCjyeWB))
            elif BQieURjB_DLh7SynE == 'cWkPRwHt_3FqwTwLR':
                LhLuSrbE_2rqw5QAU = list(fSrWGmap_9P3NhQcf.pop())
                for GxpzGtie_oL9yfTb3 in reversed(LhLuSrbE_2rqw5QAU[:gmBRAPZG_a8gm102B]): fSrWGmap_9P3NhQcf.append(GxpzGtie_oL9yfTb3)
            elif BQieURjB_DLh7SynE == 'UVGqqvHe_8ZEG7AlX':
                MXQYCoqj_UTbiSym0 = fSrWGmap_9P3NhQcf.pop()
                if MXQYCoqj_UTbiSym0 is not None: raise MXQYCoqj_UTbiSym0
            elif BQieURjB_DLh7SynE in ('uaOlxJLd_HGJsBxrJ', 'zqvSDXtI_2TWaZkfy', 'rKRPwTYt_GIpnvBeB', 'awsfoTlk_1JX2ysm2', 'aUmuyGyq_UWZQwxo6'):pass
        return None
    return iJEtqrrl_uh4pxoLS
def OriirjeT_WD0PNIv1(ejSaGcdk_Bi4Y31r7,OQQVDyHU_TWyzmlWP):
 def acbgVQXP_9FFG2zrI(CflPgFoO_WAXAZwPh):
  dLmuexrN_TW3jpoUW=CflPgFoO_WAXAZwPh['IYuFtsHa_LbWuFhRa'];juiLXYqq_5lApNj93=list(CflPgFoO_WAXAZwPh['FDsuhAsW_4iEuwGTb']);IGoGDhXq_2nWLUcNv=[None]*16;PbAdCJxo_30i8PFuK=0;juiLXYqq_5lApNj93[CflPgFoO_WAXAZwPh['MxbmRdQo_1moFQk4y']]=OQQVDyHU_TWyzmlWP
  while PbAdCJxo_30i8PFuK<len(dLmuexrN_TW3jpoUW):
   dRtQmgaP_1tTt16qu=dLmuexrN_TW3jpoUW[PbAdCJxo_30i8PFuK];ycKcEAxX_tC3l8xPs=dLmuexrN_TW3jpoUW[PbAdCJxo_30i8PFuK+1];VICPWGKi_cSHm9m9d=dLmuexrN_TW3jpoUW[PbAdCJxo_30i8PFuK+2];NtonsJgf_qkC6HgOd=dLmuexrN_TW3jpoUW[PbAdCJxo_30i8PFuK+3];PbAdCJxo_30i8PFuK+=4;zkOecEGm_p1YtDG1J=ejSaGcdk_Bi4Y31r7.get(dRtQmgaP_1tTt16qu)
   if zkOecEGm_p1YtDG1J=='BSpRadzw_3ansNmSp':pass
   elif zkOecEGm_p1YtDG1J=='qFHcKqJj_R7x0NXsa':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=juiLXYqq_5lApNj93[VICPWGKi_cSHm9m9d]
   elif zkOecEGm_p1YtDG1J=='dwiGGEFO_46wwtcv2':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]
   elif zkOecEGm_p1YtDG1J=='ZPYTHkXI_VJLCVYG6':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]
   elif zkOecEGm_p1YtDG1J=='lCfnergs_YV9GAgCp':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]+IGoGDhXq_2nWLUcNv[NtonsJgf_qkC6HgOd]
   elif zkOecEGm_p1YtDG1J=='czchuhwG_K2sx4J0S':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]-IGoGDhXq_2nWLUcNv[NtonsJgf_qkC6HgOd]
   elif zkOecEGm_p1YtDG1J=='QnqYYMzE_LUSheX8C':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]*IGoGDhXq_2nWLUcNv[NtonsJgf_qkC6HgOd]
   elif zkOecEGm_p1YtDG1J=='FhcUuulb_4v3lFNIq':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]^IGoGDhXq_2nWLUcNv[NtonsJgf_qkC6HgOd]
   elif zkOecEGm_p1YtDG1J=='bNsEbilc_qzL2p4um':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]==IGoGDhXq_2nWLUcNv[NtonsJgf_qkC6HgOd]
   elif zkOecEGm_p1YtDG1J=='HZWxdxri_I9MAQ6Cd':PbAdCJxo_30i8PFuK=ycKcEAxX_tC3l8xPs*4
   elif zkOecEGm_p1YtDG1J=='ExwxtOFW_0bTiLEBR':
    if not IGoGDhXq_2nWLUcNv[VICPWGKi_cSHm9m9d]:PbAdCJxo_30i8PFuK=ycKcEAxX_tC3l8xPs*4
   elif zkOecEGm_p1YtDG1J=='WhDRHrSg_AxtDBgzk':IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]=juiLXYqq_5lApNj93[CflPgFoO_WAXAZwPh['MxbmRdQo_1moFQk4y']](juiLXYqq_5lApNj93[0],juiLXYqq_5lApNj93[1])
   elif zkOecEGm_p1YtDG1J=='TsZUBzqh_bTuV35ML':return IGoGDhXq_2nWLUcNv[ycKcEAxX_tC3l8xPs]
   elif zkOecEGm_p1YtDG1J in('kTMXWqaf_0WtZENf5','ttonRsmZ_ufL2fkpn'):pass
  return None
 return acbgVQXP_9FFG2zrI
def MZdYQrlA_CWmWX9O4(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['OPQPWbVf_6e8sDYtj']))
  for c in v['BpdNvsdJ_nHBYcXJx']:
   if isinstance(c,dict) and c.get('NSFdHbLb_kRICMwcL'):w(c)
 w(v);return acc&0xFFFFFFFF
EqYIvZBz_tg9BGjEz=3327593613
if (27651*27651+33021*33021)%4!=3:uXlEyUYX_UJveGrAv=60862
OMbXsIEa_HkMzg84f={29: 'aUmuyGyq_UWZQwxo6', 154: 'jAVPaFRM_hGB1d31h', 79: 'hhiAwVqS_wHnGG0AZ', 132: 'HWvqTZqj_F8sflqNs', 92: 'NrneUiQB_TySnuRzY', 63: 'dWJOhUqL_SEi6PTIS', 42: 'arSKYdol_DOBiT2ZT', 11: 'FqxPokQp_Ayylp28E', 149: 'GgIHxSPs_pQXrmedM', 158: 'TfJgTnTB_jS2fwZvJ', 230: 'bCuTZHyN_OtZBsXRo', 46: 'wipuHwcx_PQ34hhWz', 91: 'rXZfwkuX_JuMkoCsX', 250: 'LefMSeuV_UXEnpWsX', 115: 'BFEWiAKN_OI0Mc3Eq', 129: 'fIZTWRJJ_uhoaKaB2', 141: 'guQPUWEW_xgXdEZ8k', 95: 'sPsnBref_nUWJOHy4', 10: 'YrxYTCOg_8iSpgBqe', 248: 'cViqfyEa_UudylOHl', 118: 'MlsaljtC_X04osjA6', 164: 'bgrFLGNM_Z5z0Nnwf', 86: 'OTACRfYU_uOWneXPS', 136: 'BkhCYtAQ_K2hCpnF6', 186: 'kyfRvoRI_sV8nNNRe', 125: 'JAfPzdMA_S5Jj5fmQ', 128: 'cetzhAEh_Z5Y3x12S', 119: 'KKDrGfYf_1O3FHuSv', 245: 'ZqUFRJbY_dDUvsI0I', 44: 'zcASsbXE_GU1DdnG6', 73: 'CUGkhZWf_X3JLsC8L', 197: 'LDimXeaD_ZqXdTqF4', 135: 'pUCULqbm_zI9FASQn', 2: 'MgYcQowJ_Un0P8zmu', 162: 'qaWvzuQD_ffNgvOSW', 25: 'KSiRhuDR_Z71LjQOI', 123: 'rTLKBbXk_ElwL3IZs', 100: 'TOofeKWr_rVTDdfs0', 5: 'wIEGlkCw_mSNytwxg', 175: 'gyMjJuMc_1VWSUwl8', 242: 'GMwmNUWx_YZqwhKNC', 238: 'qeVduAsf_SyKb6Cwr', 82: 'WCRelOor_sGbBRf8t', 19: 'VyVVUwMj_zS5ACe4e', 167: 'iBFSaygi_cxquJBJI', 116: 'VyMwyjmT_r8Xb8Uss', 134: 'TUvsbnPo_RgzVBYlg', 98: 'GPmTdzCJ_741mI92F', 171: 'NVzaZhQW_evlxS1pl', 53: 'oJlPRbtd_XfYSyUOX', 206: 'lsUsoymL_WGFTdTbU', 174: 'RIOfxQyH_EU8frESq', 228: 'ZEyIdChl_brQtUYZh', 241: 'XGAiDTld_ZmxuFa1R', 188: 'KXRMRwjg_XZfEymKt', 246: 'uSmKNoUC_XgZ9Ecv4', 101: 'DqteYjhH_XXu4XGkp', 105: 'wrdyLyjO_mPHNd729', 226: 'eOahEPdl_Q0YxuJ5Z', 224: 'LWzPJUFz_7DKDGhM1', 205: 'WaQZJMCI_45UB5p8u', 108: 'Pqhygsya_7qi5J4RE', 74: 'UFZQhhte_AoXdJhwL', 60: 'cWkPRwHt_3FqwTwLR', 199: 'UVGqqvHe_8ZEG7AlX', 161: 'uaOlxJLd_HGJsBxrJ', 41: 'zqvSDXtI_2TWaZkfy', 112: 'rKRPwTYt_GIpnvBeB', 184: 'awsfoTlk_1JX2ysm2'}
if (57381*57381+23542*23542)%4!=3:PjLdISAH_uI4UxcVz=47703
NyMRRwDp_jHHQzHcW={124: 'BSpRadzw_3ansNmSp', 167: 'qFHcKqJj_R7x0NXsa', 60: 'dwiGGEFO_46wwtcv2', 87: 'ZPYTHkXI_VJLCVYG6', 193: 'lCfnergs_YV9GAgCp', 34: 'czchuhwG_K2sx4J0S', 61: 'QnqYYMzE_LUSheX8C', 9: 'FhcUuulb_4v3lFNIq', 26: 'bNsEbilc_qzL2p4um', 55: 'HZWxdxri_I9MAQ6Cd', 156: 'ExwxtOFW_0bTiLEBR', 116: 'WhDRHrSg_AxtDBgzk', 58: 'TsZUBzqh_bTuV35ML', 203: 'YmSCTjqR_Rszzmim3', 76: 'kTMXWqaf_0WtZENf5', 114: 'ttonRsmZ_ufL2fkpn'}
iSZukhVc_p65qDbOZ=pcTrbkWP_FUAQSFSt(OMbXsIEa_HkMzg84f,kKQtsCXD_KhWj1WPD=0x97F21FD1,oLZzvMZR_8cHBb0lJ=124,ptoCLYks_vNdhvGT6=61)
WsiblsrL_bLSpQjC1=hasattr(__import__("sys"),'version') and True
if MZdYQrlA_CWmWX9O4({'NSFdHbLb_kRICMwcL': 1, 'OPQPWbVf_6e8sDYtj': [114, 61, 61, 201, 177, 220, 148, 53, 53, 43, 177, 177, 93, 45, 45, 217, 253, 81, 85, 71, 25, 59, 160, 161, 0, 29, 29, 239, 153, 153, 178, 20, 21, 184, 7, 101, 125, 13, 13, 249, 137, 137, 144, 5, 5, 7, 129, 129], 'BpdNvsdJ_nHBYcXJx': [5921896, 5921811], 'hLapLFMj_wz0iV4Z8': [{'_SE_': 1, 'pl': [58, 135, 208, 188, 100, 84, 67, 239, 140, 186, 131, 12, 89], 'fp': 4, 'inv': [0, 3, 1, 4, 2], 's1': 2103754357, 's2': 1098007716, 'sk': 54}], 'pIMiBafc_yjicNwWF': [], 'JlYhBdmO_ORI1cevK': []})!=EqYIvZBz_tg9BGjEz:__import__("sys").exit()
NVNUarGf_LSdPGrMc={'IYuFtsHa_LbWuFhRa': [167, 0, 0, 0, 167, 1, 1, 0, 167, 2, 2, 0, 76, 14, 207, 253, 76, 5, 82, 115, 116, 3, 2, 0, 58, 3, 0, 0], 'FDsuhAsW_4iEuwGTb': [{'NSFdHbLb_kRICMwcL': 1, 'OPQPWbVf_6e8sDYtj': [114, 61, 61, 201, 177, 220, 148, 53, 53, 43, 177, 177, 93, 45, 45, 217, 253, 81, 85, 71, 25, 59, 160, 161, 0, 29, 29, 239, 153, 153, 178, 20, 21, 184, 7, 101, 125, 13, 13, 249, 137, 137, 144, 5, 5, 7, 129, 129], 'BpdNvsdJ_nHBYcXJx': [5921896, 5921811], 'hLapLFMj_wz0iV4Z8': [{'_SE_': 1, 'pl': [58, 135, 208, 188, 100, 84, 67, 239, 140, 186, 131, 12, 89], 'fp': 4, 'inv': [0, 3, 1, 4, 2], 's1': 2103754357, 's2': 1098007716, 'sk': 54}], 'pIMiBafc_yjicNwWF': [], 'JlYhBdmO_ORI1cevK': []}, {'__name__': '__main__'}, '__STACK_RUNNER__'], 'mNCEWeQR_b76ldqQz': 1, 'MxbmRdQo_1moFQk4y': 2}
NVNUarGf_LSdPGrMc['FDsuhAsW_4iEuwGTb'][1]={'__name__':'__main__','Obfucator NTT - https://discord.gg/YAdrT39SWq':jXGAgHEu_7fuxwLZh}
xIRoUPIo_YsXKwZnu=OriirjeT_WD0PNIv1(NyMRRwDp_jHHQzHcW,iSZukhVc_p65qDbOZ)
xIRoUPIo_YsXKwZnu(NVNUarGf_LSdPGrMc)
XBVtHErU_IEX9gI5o=(31995+159-1)&~(159-1)
ZuaOFqrv_1NgDcqvA=(34804*0x9E3779B9+29298)&0xFFFFFFFF
